mrh="\033[31m"
kun="\033[33m"
kunt="\033[33;1m"
ijo="\033[32m"
wet="\033[97;1m"
nat="\033[0m"
bir="\033[90;36m"
clear
echo -e ${mrh}"" ${ijo}
echo "    [========================]"
echo "    |     Mass Scan Http     |"
echo "    |      Status Code       |"
echo "    [========================]"
echo -e ${kun}''
read -p "Input List: " li;
echo ''
while read LINE; do
uk=$(curl -o /dev/null --silent --head "%{http_code} $LINE\n" "$LINE" | grep -P "HTTP/1.1 (.*?)" | cut -d ' ' -f2)
echo -e ${nat}"$LINE [${ijo}$uk${nat}]"
done < $li
echo ''
echo -e ${ijo}" ~~~~By Lkey7~~~~"
