#/bin/dash

echo "Cleaning up temp folders"

rm lixo/*
rm feed/*

touch lixo/empty.folder
touch feed/empty.folder


echo "Cleaned up folders"

echo "now push the html file"

echo "git add *"
echo "git commit -m \"" `date` "\""
echo "git push -u origin master"

