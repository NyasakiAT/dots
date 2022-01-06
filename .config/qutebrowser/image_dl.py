from bs4 import BeautifulSoup
from urllib.request import urlopen
import re
import sys

def scrape_image_url(page:str):
    suffixes = (".jpeg", ".png", ".jpg", ".gif")
    if page.endswith(suffixes):
        return page
    
    

    html_page = urlopen(page)
    soup = BeautifulSoup(html_page)
    images = []
    for img in soup.findAll('img'):
        images.append(img.get('src'))
    return images

if __name__ == '__main__':
    args = sys.argv[1:]
    [print(x) for x in scrape_image_url(args[0])]
