#/bin/bash

echo "Doing everything"

rm lixo/*
rm feed/*

echo "getting feeds"
./get_feeds.sh

echo "generating html"
./gen_feed_html.sh > index.html




