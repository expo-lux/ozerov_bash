#awk -F ':' -f parse.awk /etc/passwd
#однострочник
#IFS=$'\n';for line in `cat /etc/passwd`; do id=$(echo $line | cut -d ':' -f 3);user=$(echo $line | cut -d ':' -f 1); if [[ id -gt 500 ]]; then echo $user; fi; done
#проверка - bash -c "awk -f /tmp/parse.awk /etc/passwd | grep nobody"
BEGIN {FS=":"} {if ($3 > 500) print $1}
