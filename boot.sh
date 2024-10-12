# set -e

cat <<EOF
   ____                  _          _                         _
  / __ \                | |        | |         /\            | |
 | |  | |_ __ ___   __ _| | ___   _| |__      /  \   _ __ ___| |__
 | |  | | '_ ` _ \ / _` | |/ / | | | '_ \    / /\ \ | '__/ __| '_ \
 | |__| | | | | | | (_| |   <| |_| | |_) |  / ____ \| | | (__| | | |
  \____/|_| |_| |_|\__,_|_|\_\\__,_|_.__/  /_/    \_\_|  \___|_| |_|

EOF

echo "=> Omakub-Arch is for fresh Arch Linux with Gnome installations only!"
echo ""
read -p "Begin installation (Press any key to continue or abort with ctrl+c)..."

echo "Installation starting..."

echo "Copying Omakub to ~/.local/share/omakub..."

rm -rf ~/.local/share/omakub

cp -r . ~/.local/share/omakub >/dev/null

# if [[ $OMAKUB_REF != "master" ]]; then
# 	cd ~/.local/share/omakub
# 	git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
# 	cd -
# fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh
