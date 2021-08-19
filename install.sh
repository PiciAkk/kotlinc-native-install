# download
downloadFunction(){
  curl -s https://api.github.com/repos/JetBrains/Kotlin/releases/latest \
  | grep "browser_download_url.*linux*.*tar.gz" \
  | cut -d : -f 2,3 \
  | tr -d \"
}
downloadURL=$(downloadFunction)
export fileName=$(basename "$downloadURL")
wget -q $downloadURL
# extract
tar -xzf $fileName
# move
export folderName=$(echo $fileName | sed 's/.tar.gz//g')
mv ./$folderName ~/
# add to path
if [$(awk -F: -v u="$USER" 'u==$1&&$0=$NF' /etc/passwd) =- "zsh"]
then
	echo "path+=~/$folderName/bin" >> ~/.zshrc
elif [$(awk -F: -v u="$USER" 'u==$1&&$0=$NF' /etc/passwd) =- "bash"]
then
  echo "PATH=$PATH:$folderName/bin" >> ~/.bashrc
else
  echo "You are using an unsupported shell..."
fi
