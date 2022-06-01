# amazing_cs16
CS 1.6 in docker-compose with MySQL + Adminer + FastDL (nginx)
# Amazing CS 1.6 in Docker-Compose
[![GPLv2 License](https://img.shields.io/github/license/inquisitor-4/amazing_cs16_docker)](https://github.com/inquisitor-4/amazing_cs16_docker/blob/master/LICENSE) 
[![Downloads](https://img.shields.io/github/downloads/inquisitor-4/amazing_cs16_docker/total)](https://github.com/inquisitor-4/amazing_cs16_docker/releases/latest)

## ☉ Documentation & About ☉ ##

### English

* Script for CS 1.6 mysql + fastdl (nginx) + adminer in docker-compose
* ReHLDS Amxmodmenu 1.9.0 with basic plugins and mine (BHOP+Score).
* Added models for weapons, maps, yapbot bots.
* It is possible to change the port to the one you need (default 27015)
* To enable or disable FASTDL | MySQL | ADMINER = remove # from entire block
* Works on Debian and Ubuntu (tested on 11deb)



To get started you need:
1. Buy a VPS / VDS / DS, (if you have it, skip this paragraph), with the following characteristics:
   > 1 cpu 2.2 512 ram 5 gb hhd or ssd 1 ipv4 is enough for 20-30 slots, depends on the plugins you added.
2. Login as root
3. Download the install.x file (wget or upload manually)
4. Enter chmod 777 install.x
5. Run it: ./install.x
6. Select server installation (1 item)
7. Create your login and password for your server. (believe me, this is very important, it is dangerous to run CS as root)
8. Wait for docker-compose to download and configure
9. When the setup is over, log out of root and log in using the login and password you provided
10. Type `cd amz1` (you can change the name of the directory to whatever suits you)
    11.Run ./server.x
    12.Enter (1) to launch and install CS 1.6
13. Wait a bit if necessary and enter again (1)
14. If you have the Menu again, Done. Everything is working! Thank you for installing my script!
    If you don't like my `./server.x` script, please let me know. You can also use Makefile
###### Makefile commands:
1. Build server CS 1.6 `make docker-build`
2. Run server CS 1.6 `make docker-up`
3. To stop the server `make docker-down`
4. To stop the server with garbage cleanup `make docker-down-clear`
5. To clear all garbage `make docker-clear-all`, but first point 3

### Ukrainian

* Скрипт для CS 1.6 mysql + fastdl (nginx) + adminer in docker-compose
* ReHLDS Amxmodmenu 1.9.0 з базовими плагінами, а також моїми (BHOP+Score).
* Додані моделі на зброю, карти, боти yapbot.
* Є можливість на зміну порта на потрібні вам (дефолт 27015)
* Для увімкнення або вимкнення FASTDL | MYSQL | ADMINER = видаліть # з усього блоку
* Працює на Debian та Ubuntu (тестувався на 11deb)



Для початку роботи Вам потрібно:
1. Купити VPS/VDS/DS (якщо у вас є це, пропускайте цей пункт), з такими характеристиками:
   > 1 cpu 2.2 512 ram 5 gb hhd or ssd 1 ipv4 вистачить на 20-30 слотів, залежить від доданих вами плагінів.
2. Увійти під логіном root
3. Завантажити файл install.x (wget або залити вручну)
4. Введіть chmod 777 install.x
5. Запустити його: ./install.x
6. Вибрати встановлення сервера (1 пункт)
7. Придумати Ваш логін та пароль до вашого сервера. (Зазначте! Дуже важливо, від root небезпечно запускати КС)
8. Дочекатися завантаження та налаштування docker-compose
9. Коли налаштування закінчилося, вийдіть з root і увійдіть, використовуючи логін і пароль який ви вказали
10. Пропишіть `cd amz1` (назву каталогу можете змінити на зручний вам)
    11.Запустіть ./server.x
    12.Введіть (1) для запуску та встановлення КС 1.6
13. Зачекайте трохи, якщо потрібно то введіть ще раз (1)
14. Якщо у Вас знову з'явилося Меню, Готово. Все працює! Дякую, що встановили мій скрипт!
    Якщо Вам не зручний мій скрипт `./server.x`, повідомте мене. А також можете використовувати Makefile
###### Команди Makefile:
1. Зібрати сервер КС 1.6 `make docker-build`
2. Запустити сервер КС 1.6 `make docker-up`
3. Для зупинки сервера `make docker-down`
4. Для зупинки сервера з очищенням сміття `make docker-down-clear`
5. Для очищення всього сміття `make docker-clear-all`, але спочатку пункт 3

### Russian

* Скрипт для CS 1.6 mysql + fastdl (nginx) + adminer in docker-compose
* ReHLDS Amxmodmenu 1.9.0 с базовыми плагинами, а так же моими (BHOP+Score).
* Добавлены модели на оружие, карты,боты yapbot.
* Есть возможность смены порта на нужны вам (дефолт 27015)
* Для включение или отключение FASTDL | MYSQL | ADMINER = уберите # со всего блока
* Работает на Debian и Ubuntu (тестировался на 11deb)



Для начала работы Вам нужно:
1. Купить VPS/VDS/DS, (если у вас есть это, пропускайте этот пункт), с такими характеристиками:
   > 1 cpu 2.2 512 ram 5 gb hhd or ssd 1 ipv4 хватит на 20-30 слотов, зависит от плагинов добавленными вами.
2. Войти под логином root
3. Скачать файл install.x (wget или залить вручную)
4. Ввести chmod 777 install.x
5. Запустить его: ./install.x
6. Выбрать установку сервера (1 пункт)
7. Придумать Ваш логин и пароль к вашему серверу. (поверьте это очень важно, от root опасно запускать КС)
8. Дождаться загрузки и настройки docker-compose
9. Когда настройка закончилась, выйдите из root и войдите используя логин и пароль который вы указали
10.Пропишите `cd amz1` (название каталога можете сменить на удобный вам)
11.Запустите ./server.x
12.Введите (1) для запуска и установки КС 1.6
13. Подождите немного, если нужно будет и введите еще раз (1)
14. Если у Вас появилось снова Меню, Готово. Все Работает! Спасибо, что установили мой скрипт!
    Если Вам не удобен мой скрипт `./server.x`, сообщите мне. А так же можете использовать Makefile
###### Команды Makefile:
1. Собрать сервер КС 1.6 `make docker-build`
2. Запустить сервер КС 1.6 `make docker-up`
3. Для остановки сервера `make docker-down`
4. Для остановки сервера с очисткой мусора `make docker-down-clear`
5. Для очистки всего мусора `make docker-clear-all`, но сначала пункт 3

Спасибо за Внимание!
