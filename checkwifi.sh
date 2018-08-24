# Store file /usr/local/bin/checkwifi.sh
# Make executable
# > sudo chmod 775 /usr/local/bin/checkwifi.sh
# Make logfile
# > sudo touch /var/log/reboot
# Add to crontab
# */5 * * * *     root    /usr/local/bin/checkwifi.sh >> /dev/null 2>&1

ping -c4 8.8.8.8 > /dev/null
 
if [ $? != 0 ] 
then
  echo "Rebooted due to connection loss" >> /var/log/reboot
  sudo /sbin/shutdown -r now
fi