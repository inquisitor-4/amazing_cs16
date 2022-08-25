#!/bin/bash

rul_server = "http://archive.ander.services/my_projects/games/cs/cs16/server.x"
amazing1 = "http://archive.ander.services/my_projects/games/cs/cs16/green_small_amazing/amz_green.zip"

empty()
{
  echo ""
}
retreat()
{
  echo -e "\033[0;31m ============================================================ \033[0m"
}

docker_install()
{  
  apt-get update
  apt-get upgrade -y
  apt-get install -y sudo 
  apt-get install -y unzip
  sudo apt-get install -y ca-certificates 
  sudo apt-get install -y curl 
  sudo apt-get install -y gnupg 
  sudo apt-get install -y lsb-release
  curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io
  sudo apt-get install -y docker-compose
  sudo systemctl start docker
  sudo systemctl enable docker
  sudo groupadd docker
  sudo usermod -aG docker $login2
}

install_base()
{
  clear
  echo 'Welcome to the setup wizard!';
  echo 'Enter the required data and press Enter!';
  read -p "Create a username: " login2
  read -p "Create a password: " pass2
  echo 'Installation start!';
  docker_install

  useradd -d /home/$login2 -m -s /bin/bash $login2
  echo "$login2:$pass2" | chpasswd
  cd /home/$login2/

  wget $rul_server
  wget $amazing1
  unzip amz_green.zip
  rm amz_green.zip
  cp /root/amz_green/* /home/$login2/

  chown -R $login2:$login2 /home/$login2/
  menu_f1
}

menu_f1()
{
  login2=$(whoami)
  clear
  empty
  retreat
  echo -e "- - [ANER.SERVIES] Script to manage the server in CS 1.6" 
  retreat
  echo -e "- - Script for installing and managing servers on the VPS/VDS!"
  retreat
  echo -e "- - You have completed stage 1 of the script installation."
  echo -e "- -  To continue disconnect from SSH and connect again using"
  echo -e "- - username and password you specified during installation."
  echo -e "- - Next, enter the install.x command to start the server!"
    retreat
    echo -e "- - To manage the server through SSH and SFTP use"
  echo -e "- - only the user data you specified during installation"
    echo -e "- - "
    retreat
  echo -e "- - Command to open installation script ./install.x"
  echo -e "- - Command to open the control menu ./server.x"
  retreat
  echo -e "\033[1;32m - - Help and support: \033[0m"
  echo -e "\033[1;32m - - - Telegram: https://t.me/anderservices \033[0m"
  echo -e "\033[1;32m - - - Forum: http://forum.ander.services/ \033[0m"
  echo -e "\033[1;32m - - Version: 1.0 \033[0m"
  retreat
  exit
}

deleted()
{
    echo 'Welcome to the Account Deletion Wizard!';
  echo 'Enter the required information and press Enter!';
  read -p "Enter login: " login2
    userdel -r $login2
  
  menu
}


main()
{
  clear
  empty
  retreat
  echo -e "\033[1;32m - - [ANER.SERVIES] Script to manage the server in CS 1.6\033[0m"
  retreat
  echo -e "\033[1;32m Script control menu \033[0m"
  retreat
  echo -e " - 1  -  Install Server"
  echo -e " - 2  -  Delete Server"
  echo -e " - 0  -  Exit"
  retreat
  echo -e "\033[1;32m - - Help and support: \033[0m"
  echo -e "\033[1;32m - - - Telegram: https://t.me/anderservices \033[0m"
  echo -e "\033[1;32m - - - Forum: http://forum.ander.services/ \033[0m"
  echo -e "\033[1;32m - - Version: 1.0 \033[0m"
  retreat
  empty
  read -p "Please enter a menu item:" case
  case $case in
    1)  install_base;;
      2)  deleted;;
    0)   exit 0;;
  esac
  main
}
main
