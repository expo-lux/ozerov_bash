#!/usr/bin/env bash

# это лишь план...
echo $0 > /tmp/INTERACTIVE_LOGIN_SHELL # в логин шелле выдаст -bash
echo $- # если в опциях есть i - значит шелл запущен в интерактивном режиме
echo $- > /tmp/INTCHECK_INTERACTIVE_LOGIN_SHELL

bash # запустить новую оболочку внутри login shell и выполнить в ней команды:
echo $0 > /tmp/INTERACTIVE_NON_LOGIN_SHELL # non-login shell поэтому /bin/bash
echo $- > /tmp/INTCHECK_INTERACTIVE_NON_LOGIN_SHELL #


#отредактировать /etc/bash.bashrc и вставить
# echo "HELLO FROM RBR"
#до строки (до проверки на интерактивность шелла)
# [ -z "$PS1" ] && return
#выполнить команду
ssh root@SERVER_IP "whoami"
#убедиться что появилось
# "HELLO FROM REBRAIN"
# root


ssh root@SERVER_IP "bash"
echo $0 >  /tmp/NON_INTERACTIVE_NON_LOGIN_SHELL #non-login shell поэтому /bin/bash
echo $- > /tmp/INTCHECK_NON_INTERACTIVE_NON_LOGIN_SHELL #это non-interactive shell, поэтому там не будет опции i