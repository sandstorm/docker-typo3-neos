/configure-flow.sh

cd /var/www/
FLOW_CONTEXT=Development/Docker ./flow doctrine:migrate
FLOW_CONTEXT=Development/Docker ./flow site:import --packageKey TYPO3.NeosDemoTypo3Org
FLOW_CONTEXT=Production/Docker ./flow cache:warmup
/bin/bash