"""
create Atom feed from json file (news.json)

requirements:
    feedgen (pip3 install feedgen)

usage:

python3 create_feed.py file.json atom.xml 5
"""

import sys
import json

from feedgen.feed import FeedGenerator
fg = FeedGenerator()
fg.id('tag:boris.unito.it,2018-01-01:')
fg.title('BORIS - Behavioral Observation Research Interactive Software')
fg.title('BORIS is an easy-to-use event logging software for video/audio coding and live observations.')
fg.author( {'name':'Olivier Friard','email':'olivier.friard@unito.it'} )
fg.link( href='http://www.boris.unito.it/', rel='alternate' )
fg.logo("http://www.boris.unito.it/images/logo_boris_500px.png")
fg.link( href='http://www.boris.unito.it/static/atom.xml', rel='self', type="application/atom+xml")
fg.language('en')


news = json.loads(open(sys.argv[1]).read())

keys_list = sorted([x for x in news.keys()])[-int(sys.argv[3]):]

count = 0
for k in keys_list:
    fe = fg.add_entry()
    fe.id(news[k]["id"])
    fe.title(news[k]["title"])
    fe.summary(news[k]["summary"])
    fe.content(news[k]["content"], type="html")
    fe.updated(news[k]["updated"])
    fe.link(href=news[k]["link"])
    count += 1
    if count == int(sys.argv[3]):
        break

fg.atom_file(sys.argv[2])
