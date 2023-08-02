chmod +x /mysql-backup.sh

crontab -e

# 0 2 * * * root /mysql-backup.sh