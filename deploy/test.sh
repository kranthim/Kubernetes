ETC_HOSTS=/etc/hosts

#hostname=$(echo $HOSTNAME)
hostname=$(echo test)
ext_ip=$(kubectl get svc -n ingress-nginx | grep ingress-nginx | awk '{print $3}')

entry_var="$ext_ip $hostname"

#echo $entry_var >> ETC_HOSTS
echo $entry_var 
sudo -- sh -c -e "echo '$entry_var' >> /etc/hosts"
