#раскомментировать следующие строки в /etc/bash.bashrc чтобы подключить автодополнение
#для всех пользователей, файля автодополнения будут искаться в /etc/bash_completion.d/
# enable bash completion in interactive shells
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion

#создаем дополнения для команды tar
cat /tmp/tar.sh
#!/bin/bash

complete -W "-z -c -x -f" tar

#подключаем этот файл всем пользователям
cp /tmp/tar.sh /etc/bash_completion.d/
