DIR=/home/pi/Mark
sed -i 's|"text":".*"|"text":"'"$1"'"|g' request/request.json
