#!/bin/bash

if [[ $USER != "root" ]]; then
	echo "Maaf, Anda harus menjalankan ini sebagai root"
	exit
fi

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
#MYIP=$(wget -qO- ipv4.icanhazip.com);


# get the VPS IP
#ip=`ifconfig venet0:0 | grep 'inet addr' | awk {'print $2'} | sed s/.*://`

MYIP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
#MYIP=$(ifconfig | grep 'inet addr:' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d: -f2 | awk '{ print $1}' | head -1)
if [ "$MYIP" = "" ]; then
	MYIP=$(wget -qO- ipv4.icanhazip.com)
fi
#MYIP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
#myint=`ifconfig | grep -B1 "inet addr:$myip" | head -n1 | awk '{print $1}'`;
MYIP2="s/xxxxxxxxx/$MYIP/g";
ether=`ifconfig | cut -c 1-8 | sort | uniq -u | grep venet0 | grep -v venet0:`
if [[ $ether = "" ]]; then
        ether=eth0
fi

#vps="zvur";
#vps="aneka";

#if [[ $vps = "zvur" ]]; then
	#source="http://"
#else
	source="https://raw.githubusercontent.com/elangoverdosis/deeniedoank"
#fi

# go to root
cd
echo; echo -n 'Loading...'
echo -n '.'
sleep 1
echo -n '.'
cd
# check registered ip
wget -q -O IPcarding $source/debian7/IPcarding.txt
if ! grep -w -q $MYIP IPcarding; then
echo "Maaf, hanya IP yang terdaftar yang bisa menggunakan script ini!"
        echo "     
                       
               =============== OS-32 & 64-bit ================
               ♦                                             ♦
               ♦   AUTOSCRIPT CREATED BY YUSUF ARDIANSYAH    ♦
	       ♦                     &                       ♦
	       ♦               DENY SISWANTO                 ♦
               ♦       -----------About Us------------       ♦ 
               ♦            Tel : +6283843700098             ♦
               ♦         { Sms/whatsapp/telegram }           ♦ 
               ♦       http://facebook.com/t34mh4ck3r        ♦    
               ♦   http://www.facebook.com/elang.overdosis   ♦
               ♦                                             ♦
               =============== OS-32 & 64-bit ================
               
                 Please make payment before use auto script
                 ..........................................
                 .        Price: Rp.20.000 = 1IP          .
                 .          *****************             .
                 .           Maybank Account              .
                 .           =================            .
                 .          No   : Hubungi admin          .
                 .          Name : Yusuf Ardiansyah       .
                 ..........................................   
                          Thank You For Choice Us"

	echo "        Hubungi: editor ( elang overdosis atau deeniedoank)"
	rm -f /root/IPcarding
	rm -f /etc/bin/install-sqlmap.sh
	exit
fi
echo ""
echo; echo -n 'Loading source files...'
echo -n '.'
cd
apt-get install git
git clone https://github.com/elangoverdosis/sqlmap.git
clear

cd sqlmap
chmod 755 sqlmap.py

echo -n '.'
cd /root
git clone https://github.com/elangoverdosis/fimap.git
cd fimap
cd src
chmod 755 autoawesome.py
chmod 755 baseClass.py
chmod 755 baseTools.py
chmod 755 bingScan.py
chmod 755 codeinjector.py
chmod 755 config.py
chmod 755 crawler.py
chmod 755 fimap.py
chmod 755 googleScan.py
chmod 755 language.py
chmod 755 massScan.py
chmod 755 plugininterface.py
chmod 755 report.py
chmod 755 singleScan.py
chmod 755 ssh.py
chmod 755 targetScanner.py

clear
cd /root
wget -O /usr/bin/carding.sh $source/debian7/carding.sh
chmod +x /usr/bin/carding.sh
clear
cd /root

echo -n '.'

wget -O /usr/bin/web-vuln.sh $source/debian7/web-vuln.sh
chmod +x /usr/bin/web-vuln.sh
clear
cd /root
echo -n '.'
#wget -O /usr/bin/carding_hack $source/debian7/carding_hack.sh
#chmod +x /usr/bin/carding_hack
#clear
#cd
# bingoo
apt-get install lynx
apt-get install curl
git clone https://github.com/elangoverdosis/BinGoo.git
clear

clear

cd
echo -n '.'

wget $source/debian7/uniscan6.2.tar.gz
clear
tar xf uniscan6.2.tar.gz
sed -i 's/$func->CheckUpdate();/#$func->CheckUpdate();/g' /root/uniscan6.2/uniscan.pl
#wget -O /root/uniscan6.2/Languages/en.lang $source/debian7/en.lang
#chmod 644 /root/uniscan6.2/Languages/en.lang
rm uniscan6.2.tar.gz
cd
echo -n '.'
clear
sudo apt-get install libmoose-perl
echo -n '.'
clear
cd /root
wget -O /usr/bin/carding_hack $source/debian7/carding_hack.sh
chmod +x /usr/bin/carding_hack
clear
cd /root
echo -n '.'
rm /usr/bin/install_sqlmap
clear
echo "OK, sukses boss!!!"

