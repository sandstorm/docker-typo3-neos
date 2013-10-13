cd docker-root
sudo docker build -t="typo3neos/base" .
sudo docker run -v `pwd`/../neos-distribution:/var/www -p 49081:80 -i -t typo3neos/base /bin/bash


#sudo docker run -m 15000000000 -i -t -v `pwd`:/tmp/output -w /tmp/output/Base skurfuerst/test1 $@ 