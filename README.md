# Very simple update script to run weekly with crontab

schedule in crontab with desired frequency and add log output

ex (weekly on sunday): 
0 1 * * 0 updater.sh > /updateLogs/Log_`date +\%m-\%d-\%Y`.log 2>&1
