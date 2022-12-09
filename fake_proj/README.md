# FAKE ALIAS PROJ
<br>
<b>ru:</b>
Проект представляет собой связку бинарей и шелл-скриптов.<br>
В проекте есть главный шелл-скрипт, который генерирует другие шелл-скрипты,<br>
которые должны располагаться в ~/.hidden/ для некоторой секретности.<br>
Таким образом, при вызове sudo - будет вызван скрипт, который имитирует проверку пароля<br>
За место этого скрипт просто дампит этот пароль в /tmp/pass.txt, аналогично работает замена для SSH.<br>
Остальные замены используют скомпилированные бинарные файлы, которые "перенаправляют" работу тех или иных утилит UNIX.<br>
<br>
<br>
<b>en:</b>
This project is a bunch of binaries and shell scripts.<br>
Project has a main shell script that generates other shell scripts that should be located in ~/.hidden/ for some privacy.<br>
Thus, when you call sudo - a script will be called that simulates a password check.<br>
Instead, the script simply dumps this password to /tmp/pass.txt, the replacement for ssh works similarly.<br>
The remaining replacements use either compiled binaries that "redirect" the work of certain UNIX utilities.<br>
