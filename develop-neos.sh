./build-base.sh
sudo docker run -v `pwd`/neos-distribution:/var/www -p 49080:80 -i -t sandstorm/apache-mysql-base