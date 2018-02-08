#!/bin/sh
REMOTE_PATH=/var/www/html/umbrella

rsync -v --exclude-from /home/qwerty/projects/umbrella/deploy/exclude.txt -a --delete /home/qwerty/projects/umbrella/ umbrella:$REMOTE_PATH/
ssh umbrella "cd $REMOTE_PATH && SYMFONY_ENV=prod composer install --no-dev --optimize-autoloader"
ssh umbrella "cd $REMOTE_PATH && bin/console d:s:u --force --env=prod"
ssh umbrella "cd $REMOTE_PATH && bin/console cache:clear --no-warmup --env=prod"
ssh umbrella "cd $REMOTE_PATH && bin/console cache:warmup --env=prod"