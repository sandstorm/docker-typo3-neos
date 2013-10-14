/configure-flow.sh

sleep 3
# create empty "flowdb" database
mysqladmin create flowdb


cd /var/www/
FLOW_CONTEXT=Development/Docker ./flow doctrine:migrate
FLOW_CONTEXT=Development/Docker ./flow site:import --packageKey TYPO3.NeosDemoTypo3Org
FLOW_CONTEXT=Production/Docker ./flow cache:warmup
FLOW_CONTEXT=Production/Docker ./flow user:create admin password Firstname Lastname
/bin/bash