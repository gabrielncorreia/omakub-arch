# Stream music using https://spotify.com
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg  | gpg --import -
yay -S spotify --noconfirm
