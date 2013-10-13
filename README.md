FORWARD_DOCKER_PORTS=TRUE vagrant up

cd /vagrant
sudo docker run -i -t typo3neos/base /bin/bash
# dann per hand: /start-everything.sh

# cd /var/www
# bin/phpunit -c Build/BuildEssentials/PhpUnit/FunctionalTests.xml
# bin/phpunit -c Build/BuildEssentials/PhpUnit/UnitTests.xml





# CMD ["/start-everything.sh"]
# RUN apt-get install -q -y openjdk-7-jre-headless firefox xvfb


# ADD http://selenium.googlecode.com/files/selenium-server-standalone-2.35.0.jar /srv/



# CMD ["/usr/local/bin/start-selenium-server.sh"]