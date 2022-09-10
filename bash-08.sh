cat /etc/passwd | grep nologin > /tmp/t1.txt
grep -v nologin /etc/passwd > /tmp/t2.txt
find / -type f | grep test > /tmp/t3.txt