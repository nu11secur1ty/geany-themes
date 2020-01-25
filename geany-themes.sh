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
CSDIR="$HOME/.config/geany/colorschemes/"
echo "Installing themes into \`$CSDIR'..."
mkdir -p "$CSDIR"
for SCHEME in `ls colorschemes/*.conf`
do
  BNAME=`basename "$SCHEME"`
  echo " => $BNAME"
  cp "$SCHEME" "$CSDIR"
done
  cd 
    rm -rf geany-themes

exit 0;
