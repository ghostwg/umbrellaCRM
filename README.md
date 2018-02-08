umbrella
========

A Symfony project created on December 4, 2017, 12:08 pm.


Install google-chrome
=

```bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt-get update

sudo apt-get install libxss1 libappindicator1 libindicator7 libosmesa6

sudo apt-get install -y google-chrome-stable

sudo ln -s /usr/lib/x86_64-linux-gnu/libOSMesa.so.6 /opt/google/chrome/libosmesa.so

```

For prod env
=
Add to crontab

```
0 0 1 * * /usr/bin/env php /[absolute path to app]/bin/console umbrella:generate-monthly-report --finalize-old
```
# umbrellaCRM
