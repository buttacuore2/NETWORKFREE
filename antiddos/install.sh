#!/bin/sh
if [ -d '/usr/local/ddos' ]; then
	echo; echo; echo "Please un-install the previous version first"
	exit 0
else
	mkdir /usr/local/ddos
fi
clear
echo; echo 'Installing DOS-Deflate 0.6'; echo
echo; echo -n 'Downloading source files...'
wget -q -O /usr/local/ddos/ddos.conf https://raw.githubusercontent.com/buttacuore2/NETWORKFREE/refs/heads/main/antiddos/ddos.conf
echo -n '.'
wget -q -O /usr/local/ddos/LICENSE https://raw.githubusercontent.com/buttacuore2/NETWORKFREE/refs/heads/main/antiddos/LICENSE
echo -n '.'
wget -q -O /usr/local/ddos/ignore.ip.list https://raw.githubusercontent.com/buttacuore2/NETWORKFREE/refs/heads/main/antiddos/ignore.ip.list
echo -n '.'
wget -q -O /usr/local/ddos/ddos.sh https://raw.githubusercontent.com/buttacuore2/NETWORKFREE/refs/heads/main/antiddos/ddos.sh
chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'

echo; echo -n 'Creating cron to run script every minute.....(Default setting)'
/usr/local/ddos/ddos.sh --cron > /dev/null 2>&1
echo '.....done'
echo; echo 'Installation has completed.'
echo 'Config file is at /usr/local/ddos/ddos.conf'
echo 'Please send in your comments and/or suggestions to zaf@vsnl.com'
echo
cat /usr/local/ddos/LICENSE | less
