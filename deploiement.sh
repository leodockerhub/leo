sudo apt-get install mysql-client
sudo docker pull leodockerhub/mysql
sudo wget -P /home/ https://raw.githubusercontent.com/leodockerhub/leo/master/docker-compose.yml
sudo wget -P /home/ https://raw.githubusercontent.com/leodockerhub/leo/master/todoVal.sql
cd /home/
sudo docker-compose up -d
sleep 10s
ip=$(wget -q -O - http://ip.tupeux.com | tail)
sudo mysql -h $ip -u root --password=azerty -e "CREATE DATABASE todoVal"
sudo mysql -h $ip -u root --password=azerty todoVal < todoVal.sql
