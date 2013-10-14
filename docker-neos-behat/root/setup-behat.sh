/configure-flow.sh

cd /var/www/Build/Behat
apt-get install -q -y curl php5-curl php5-sqlite
curl -sS https://getcomposer.org/installer | php
php composer.phar install

mysqladmin create behatdb

cd /var/www

mkdir -p Configuration/Development/Behat

echo "TYPO3:" >> Configuration/Development/Behat/Settings.yaml
echo "  Flow:" >> Configuration/Development/Behat/Settings.yaml
echo "    persistence:" >> Configuration/Development/Behat/Settings.yaml
echo "      backendOptions:" >> Configuration/Development/Behat/Settings.yaml
echo "        host: 127.0.0.1" >> Configuration/Development/Behat/Settings.yaml
echo "        dbname: behatdb" >> Configuration/Development/Behat/Settings.yaml
echo "        user: root" >> Configuration/Development/Behat/Settings.yaml
echo "        password: ''" >> Configuration/Development/Behat/Settings.yaml
echo "    utility:" >> Configuration/Development/Behat/Settings.yaml
echo "      environment:" >> Configuration/Development/Behat/Settings.yaml
echo "        temporaryDirectoryBase: '/tmp'" >> Configuration/Development/Behat/Settings.yaml


mkdir -p Configuration/Testing/Behat
cp Configuration/Development/Behat/Settings.yaml Configuration/Testing/Behat/Settings.yaml

cd Packages/Application/TYPO3.Neos/Tests/Behavior
cp behat.yml.dist behat.yml
echo "      base_url: http://localhost:81/" >> behat.yml

cd /var/
curl -O http://selenium.googlecode.com/files/selenium-server-standalone-2.35.0.jar