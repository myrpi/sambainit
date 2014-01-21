#!/bin/bash

################ Script Info ################		

## Program: Auto Samba V1.0
## Author:  Clumart.G(翅儿学飞)
## Date:    2014-01-22
## Update:  2014012201 None


################ Env Define ################

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:~/sbin
LANG=C
export PATH
export LANG

################ Var Setting ################

InputVar=$*
HomeDir="/tmp/autoscript/"

################ Func Define ################ 
function _info_msg() {
_header
echo -e " |                                                                |"
echo -e " |                Thank you for use this script!                  |"
echo -e " |                                                                |"
echo -e " |                         Version: 1.0                           |"
echo -e " |                                                                |"
echo -e " |                     http://www.idcsrv.com                      |"
echo -e " |                                                                |"
echo -e " |                   Author:翅儿学飞(Clumart.G)                   |"
echo -e " |                    Email:myregs6@gmail.com                     |"
echo -e " |                         QQ:1810836851                          |"
echo -e " |                         QQ群:61749648                          |"
echo -e " |                                                                |"
echo -e " |          Hit [ENTER] to continue or ctrl+c to exit             |"
echo -e " |                                                                |"
printf " o----------------------------------------------------------------o\n"	
 read entcs 
clear
}

function _end_msg() {
echo -e "###################################################################"
echo ""
echo -e "                         Install Finish :)"
echo ""
echo -e "###################################################################"
echo ""
echo ""
_header
echo -e " |                                                                |"
echo -e " |                 Thank you for use this script!                 |"
echo -e " |                                                                |"
echo -e " |                The software has been installed!                |"
echo -e " |                                                                |"
echo -e " |                     http://www.idcsrv.com                      |"
echo -e " |                                                                |"
echo -e " |                   Author:翅儿学飞(Clumart.G)                   |"
echo -e " |                    Email:myregs6@gmail.com                     |"
echo -e " |                         QQ:1810836851                          |"
echo -e " |                         QQ群:61749648                          |"
echo -e " |                                                                |"
printf " o----------------------------------------------------------------o\n"
}

function _header() {
	printf " o----------------------------------------------------------------o\n"
	printf " | :: Auto Samba                              v1.0.0 (2014/01/22) |\n"
	printf " o----------------------------------------------------------------o\n"	
}

function _error_exit() {
    cd
    rm -rf ${HomeDir}
    clear
    printf " o----------------------------------------------------------------o\n"
    printf " | :: Error                                   v1.0.0 (2014-01-22) |\n"
    printf " o----------------------------------------------------------------o\n"        
    printf " Error Message:$1 \n"
    exit 1
}

##Program Function

################ Main ################
clear
_info_msg

if [ `id -u` != "0" ]; then
echo -e "You need to be be the root user to run this script.\nWe also suggest you use a direct root login, not su -, sudo etc..."
exit 1
fi

if [ ! -d $HomeDir ]; then
	mkdir -p $HomeDir
fi

cd $HomeDir || _error_exit "Enter ${HomeDir} Faild."


############  Clean Cache  ############
cd
rm -rf ${HomeDir}
_end_msg
