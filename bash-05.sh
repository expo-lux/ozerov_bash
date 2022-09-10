mkdir -p /tmp/test1/test2/test3/test4
sudo touch -t  9011251800 /etc/shells
mkdir -p /var/backups
sudo cp -pr /etc /var/backups/ #копирование с сохранением атрибутов
ln -s /var/backups/etc/passwd /dev/test #/dev/test ссылается на бэкап в /var/backups/etc/passwd