/etc/init.d/apache2 start
mysqld_safe &

cd /var/www/
rm -Rf Configuration/Development/Docker/Settings.yaml
mkdir -p Configuration/Development/Docker/

echo "TYPO3:" >> Configuration/Development/Docker/Settings.yaml
echo "  Flow:" >> Configuration/Development/Docker/Settings.yaml
echo "    persistence:" >> Configuration/Development/Docker/Settings.yaml
echo "      backendOptions:" >> Configuration/Development/Docker/Settings.yaml
echo "        host: 127.0.0.1" >> Configuration/Development/Docker/Settings.yaml
echo "        dbname: flowdb" >> Configuration/Development/Docker/Settings.yaml
echo "        user: root" >> Configuration/Development/Docker/Settings.yaml
echo "        password: ''" >> Configuration/Development/Docker/Settings.yaml
echo "    utility:" >> Configuration/Development/Docker/Settings.yaml
echo "      environment:" >> Configuration/Development/Docker/Settings.yaml
echo "        temporaryDirectoryBase: '/tmp'" >> Configuration/Development/Docker/Settings.yaml


FLOW_CONTEXT=Development/Docker ./flow doctrine:migrate
FLOW_CONTEXT=Development/Docker ./flow site:import --packageKey TYPO3.NeosDemoTypo3Org