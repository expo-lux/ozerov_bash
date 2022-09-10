sudo adduser --quiet --disabled-password --shell $(which bash)  user
echo "alias getrootinfo='cat /etc/passwd | grep root'" > /home/user/.bash_aliases
sudo chown user:user /home/user/.bash_aliases
#проверить существует ли /usr/local/temp [[ -d /usr/local/temp ]]; echo $?
mkdir /usr/local/temp
vim /etc/environment #добавляем в начало /usr/local/temp:, чтобы cat искался сначала в /usr/local/temp
cp $(which cat) /usr/local/temp
[[ -f /usr/local/temp/cat ]]; echo $? #/usr/local/temp/cat - существует