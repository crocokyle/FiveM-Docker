from bs4 import BeautifulSoup
import os
import requests

URL = 'https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/'
soup = BeautifulSoup(requests.get(URL).content)
relative_path = soup.find_all("div", {"class": "panel-block"})[0].next_element.next_element['href']
latest_stable = "{}{}".format(URL, relative_path[2:])

print(latest_stable)
os.system("wget " + latest_stable)