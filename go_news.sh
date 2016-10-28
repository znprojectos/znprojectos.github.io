#/bin/bash

# This command does everything:
#  - Fetches feeds
#  - Parses them
#  - Generates HTML

echo "Doing everything"
cd /home/pi/newsthing/

rm lixo/*
rm feed/*

echo "getting feeds"
./get_feeds.sh

echo "generating html"
./gen_feed_html.sh > index.html

echo "cleaning up stuff"
./cleanup_news.sh


