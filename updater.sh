#!/bin/bash

logger 'Updater running...'

echo '[*] Get updates and upgrade...'
sudo apt-get update && sudo apt-get upgrade -y

echo '[*] Quick tidy up...'
sudo apt-get autoclean -y && sudo apt-get autoremove -y

echo '[*] Cleanup finished.'

logger 'Updater complete.'

echo '[*] Rebooting...'

sudo reboot

# schedule in crontab with desired frequency and add log output - 
#ex: 0 1 * * 0 updater.sh > /updateLogs/Log_`date +\%m-\%d-\%Y`.log 2>&1
