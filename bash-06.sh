tar czvf /tmp/etc.tar.gz /etc
wc -w /tmp/etc.tar.gz > /tmp/etc.words.count
p=$(find / -name "*somefile.tar.gz*" -type f)
mkdir /tmp/found
echo $p
tar -tf $p
cd /tmp/found
tar xzvf $p
