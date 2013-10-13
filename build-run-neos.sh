./build-base.sh


cd neos-distribution
rm -Rf ../docker-neos-run/neos-latest.tar.gz
tar -czf ../docker-neos-run/neos-latest.tar.gz *
cd ..


cd docker-neos-run
sudo docker build -rm -t="sandstorm/neos-run" .
cd ..