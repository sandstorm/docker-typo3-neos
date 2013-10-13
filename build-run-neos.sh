./build-base.sh

if [ ! -f docker-neos-run/neos-latest.tar.gz ];
then
  cd neos-distribution
  tar -czf ../docker-neos-run/neos-latest.tar.gz *
  cd ..
fi

cd docker-neos-run
sudo docker build -rm -t="sandstorm/neos-run" .
cd ..