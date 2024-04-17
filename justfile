
add_news:
    tilde src/news.json
    rye run python src/create_feed.py src/news.json src/static/atom.xml 5


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
    
    rye run mkdocs build

# push web site to github repo
push version:
    git add docs src
    git commit -am "web site for version {{version}}"
    git push


# push and build to github repo
build_push version date: (build version date) (push version)

serve:
    rye run mkdocs serve

modif:
    code src

