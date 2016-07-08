sudo apt-get install mysql-client
docker pull leodockerhub/mysql
sudo wget -P /home/ https://raw.githubusercontent.com/leodockerhub/leo/master/docker-compose.yml
sudo wget -P /home/ https://raw.githubusercontent.com/leodockerhub/leo/master/todoVal.sql
cd /home/
sudo docker-compose up -d
