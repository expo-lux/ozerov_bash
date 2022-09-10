#sed -f /tmp/fix.sed /etc/passwd
#проверка: bash -c 'sed -f /tmp/fix.sed /etc/passwd | grep "CHECK IT HEREroot"'
s/root/CHECK IT HERE&/