#check wireguard connection

wg-quick up /etc/wireguard/*.conf > /dev/null 2>&1

cur_ip=$(curl -s ifconfig.me)
desired_ip=$(awk '/Endpoint/ {split($3, arr, ":"); print arr[1]}' /etc/wireguard/*.conf)

echo "Desired IP: $desired_ip"

if [ $cur_ip = $desired_ip ]; then
	echo "Wireguard connected succesfuly. Got IP: $cur_ip"
else 
	echo "Connection unsucessful. Got IP: $cur_ip"
fi
