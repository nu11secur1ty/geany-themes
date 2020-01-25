#!/usr/bin/bash
# by nu11secur1ty
# install geany
apt purge geany -y
cd /root/.config
rm -rf geany
apt install -y geany geany-plugins
# get themes
git clone https://github.com/geany/geany-themes.git
  cd geany-themes
# install themes
./install.sh
  cd 
    rm -rf geany-themes
exit 0;
