"""
create Atom feed from json file (news.json)

requirements:
    feedgen (pip3 install feedgen)

usage:

python create_feed.py file.json atom.xml 5
"""

import sys
import json

from feedgen.feed import FeedGenerator

fg = FeedGenerator()
fg.id("tag:boris.unito.it,2018-01-01:")
fg.title("BORIS - Behavioral Observation Research Interactive Software")
fg.title("BORIS is an easy-to-use event logging software for video/audio coding and live observations.")
fg.author({"name": "Olivier Friard", "email": "olivier.friard@unito.it"})
fg.link(href="http://www.boris.unito.it/", rel="alternate")
fg.logo("https://www.boris.unito.it/images/boris_logo-3.400px.png")
fg.link(href="http://www.boris.unito.it/static/atom.xml", rel="self", type="application/atom+xml")
fg.language("en")

# read news from json
with open(sys.argv[1]) as f_in:
    news = json.loads(f_in.read())
keys_list: list = sorted([x for x in news.keys()])[-int(sys.argv[3]) :]

keys_list.reverse()

# open md file
f_out = open("src/news.md", "w")

count: int = 0
for k in keys_list:
    fe = fg.add_entry()
    fe.id(news[k]["id"])
    fe.title(news[k]["title"])
    fe.summary(news[k]["summary"])
    fe.content(news[k]["content"], type="html")
    fe.updated(news[k]["updated"])
    fe.link(href=news[k]["link"])

    # write md file
    f_out.write(f"**{news[k]['title']}**\n\n")
    f_out.write(f"{news[k]['content']}\n\n")

    count += 1
    if count == int(sys.argv[3]):
        break

f_out.close()

fg.atom_file(sys.argv[2])
