# generate an HTML file with one entry of the '34,361 documented deaths of refugees and migrants' file

import os
import time
import random

HTML = """
<p>
<div style="background:lightgray; padding-left:40px">
<br>
<h2>The Fatal Policies of Fortress Europe</h2>

34,361 documented deaths of refugees and migrants due to the restrictive policies of "Fortress Europe"<br>
Documentation by UNITED as of 5 May 2018<br>
<br>
{}

<br>

<a href="http://www.unitedagainstracism.org/blog/2018/06/20/press-release-united-list-of-34361-refugee-deaths-published-in-the-guardian">European Network against nationalism, racism, fascism and in support of migrants and refugees</a>
<br>
<br>
</div>
</p>
"""

list = open("deaths_of_refugees_and_migrants.tsv").read().split("\n")

while True:

    person = random.choice(list).split("\t")

    try:
        txt = (f"Found dead: <b>{person[0]}</b><br>"
               f"Number of person: <b>{person[1]}</b><br>"
               f"Name, gender, age: <b>{person[2]}</b><br>"
               f"Region of origin: <b>{person[3]}</b><br>"
               f"Cause of death: <b>{person[4]}</b><br>"
               f"Source: {person[5]}<br>")
    
        print(HTML.format(txt))
    
        with open("death_of_refugees_and_migrants.html", "w") as f_out:
            f_out.write(HTML.format(txt))

        os.system("git commit -a -m 'modified the_list'; git push")
        time.sleep(120)
    except:
        print(f"error with {person}")
    


