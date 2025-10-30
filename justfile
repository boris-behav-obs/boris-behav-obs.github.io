# justfile for the management of the BORIS web site





# get version and version date on BORIS web site
current_version:
    @curl --silent https://www.boris.unito.it/download/ | grep -oP 'Current version: v\. \K<strong>\d+\.\d+\.\d+</strong>' | sed 's/<\/\?strong>//g'
    @curl --silent https://www.boris.unito.it/download/ | grep -oP 'release date: \K\d{4}-\d{2}-\d{2}'
    


simple_build:
    uv run mkdocs build    


simple_build_push: simple_build
    git add src
    git commit -am "web site update"
    git push
    

add_news:
    sensible-editor src/news.json
    uv run python src/create_feed.py src/news.json src/static/atom.xml 5


# create the raw_citations.md file
add_citations:
    #if [ locate -b 'boris_citations.db' ]; then 
    sqlite3 $HOME/gdrive_sync/src/python/pyobserver/deployment/boris_citations.db 'SELECT printf("%s. %s. %s (%s) %s(%s).%shttps://doi.org/%s%s", authors, title, journal, SUBSTRING(cover_date, 1,4), volume, issue, CHAR(10), doi, CHAR(10)) FROM citations ORDER BY cover_date DESC' > src/raw_citations.md 
    #else
    #echo 'File boris_citations.db not found'
    #fi



# build the web site
build version date: add_news
    cp mkdocs.yml mkdocs.yml.backup

    sed -i '/    version: /c\INSERT_VERSION' mkdocs.yml
    sed -i 's#INSERT_VERSION#    version: {{version}}#g' mkdocs.yml

    sed -i '/    release_date: /c\INSERT_DATE' mkdocs.yml
    sed -i 's#INSERT_DATE#    release_date: {{date}}#g' mkdocs.yml

    sed -i '/    citations_number: /c\INSERT_CITATIONS' mkdocs.yml
    sed -i "s#INSERT_CITATIONS#    citations_number: $(get_citations.bash)#g" mkdocs.yml

    sed -i '/    citations_date: /c\INSERT_DATE' mkdocs.yml
    sed -i "s#INSERT_DATE#    citations_date: $(date +%F)#g" mkdocs.yml

    sed -i '/./c\INSERT_VERSION' src/static/ver4.dat
    sed -i 's#INSERT_VERSION#{{version}}#g' src/static/ver4.dat

    sed -i '/./c\INSERT_VERSION' src/static/ver.dat
    sed -i 's#INSERT_VERSION#{{version}}#g' src/static/ver.dat

    uv run mkdocs build


# push web site to github repo
push version date:
    git add src
    git commit -am "web site for version {{version}} ({{date}})"
    git push


# push and build to github repo
build_push version date: (build version date) (push version date)


serve:
    uv run mkdocs serve


# start visual studio code
modif:
    code src

