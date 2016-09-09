#/bin/bash

# Does everything AND commits page
#
# This requires setup:
# 
# git config credential.helper store
# git push https://github.com/znprojectos/znprojectos.github.io.git
# git config --global credential.helper 'cache --timeout 777200'

cd /home/pi/newsthing/znprojectos.github.io

./go_news.sh
git add *
git commit -m "`date`"
git push -u origin master
