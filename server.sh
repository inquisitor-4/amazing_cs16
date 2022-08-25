#!/bin/bash

empty()
{
  echo ""
}
retreat()
{
  echo -e "\033[0;31m ============================================================ \033[0m"
}

start()
{
  make docker-build
  make docker-up
  main2

}
start_cl()
{  
  make docker-down
  make docker-clear-all -y
  make docker-build
  make docker-up
  main2
}
stop()
{
  make docker-down
  main2

}
stop_cl()
{
  make docker-down-clear
  main2

}
clear()
{
  make docker-clear-all
  main2
}

main2()
{
  clear
  empty
  retreat
  echo -e "\033[1;32m - - [ANER.SERVIES] Script to manage the server in CS 1.6\033[0m"
  retreat
  echo -e "\033[1;32m Script control menu \033[0m"
  retreat
  echo -e " - 1  -  Re|Start server"
  echo -e " - 3  -  Restart with clear server"
  echo -e " - 2  -  Stop server"
  echo -e " - 3  -  Stop with clear server"
  echo -e " - 4  -  Clear server"
  echo -e " - 0  -  Exit"
  retreat
  echo -e "\033[1;32m - - Select item 3 to free up disk space.\033[0m"
  echo -e "\033[1;32m - - But first stop the server.\033[0m"
  retreat
  echo -e "\033[1;32m - - Help and support: \033[0m"
  echo -e "\033[1;32m - - - Telegram: https://t.me/anderservices \033[0m"
  echo -e "\033[1;32m - - - Forum: http://forum.ander.services/ \033[0m"
  echo -e "\033[1;32m - - Version: 1.0 \033[0m"
  retreat
  empty
  read -p "Please enter a menu item:" case
  case $case in
    1)  start;;
    2)  start_cl;;
      3)  stop;;
    4)  stop_cl;;
    5)  clear;;
    0)   exit 0;;
  esac
  main2
}
main2