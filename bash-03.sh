cat /etc/user.env
KEY1=DATA
KEY2=$SHELL

useradd user -c /usr/bin/bash -m #по умолчанию создастся оболочка sh, поэтому явно прописываем /usr/bin/bash

#для создания переменной для конкретного пользователя (non-interactive login shell) добавляем строку переменная=значение
#в файле ~/.bashrc до строки где определяется интерактивность оболочки
vim /home/user/.bashrc
KEY3=local


