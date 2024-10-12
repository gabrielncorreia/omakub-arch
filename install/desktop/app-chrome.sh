# Browse the web with the most popular browser. See https://www.google.com/chrome/
yay -S google-chrome --noconfirm
rm google-chrome-stable_current_amd64.deb
xdg-settings set default-web-browser google-chrome.desktop
