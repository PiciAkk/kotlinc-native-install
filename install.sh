# download
curl -s https://api.github.com/repos/JetBrains/Kotlin/releases/latest \
| grep "browser_download_url.*linux*.*tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
tar -xzf kotlin-native-linux
mv ./kotlin-native-linux ~/
# add to path
if [$shell == "zsh"]
then
  path+=('~/kotlin-native-linux/bin')
else
  PATH='~/kotlin-native-linux/bin':$PATH
if
