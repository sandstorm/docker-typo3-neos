FORWARD_DOCKER_PORTS=TRUE vagrant up

cd /vagrant
sudo docker run -i -t typo3neos/base /bin/bash
# dann per hand: /start-everything.sh

# cd /var/www
# bin/phpunit -c Build/BuildEssentials/PhpUnit/FunctionalTests.xml
# bin/phpunit -c Build/BuildEssentials/PhpUnit/UnitTests.xml
