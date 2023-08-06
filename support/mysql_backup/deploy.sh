export azure="Endpoint=https://evis-configuration.azconfig.io;Id=Y0lT-l0-s0:U4+fnNu37owDqeYPlBmp;Secret=YzCR2hHPgL3lKAkNA3rFr9NU/+UuycrZU6hvxNfkqLs="

printenv azure
# list all env variables

chmod +x /mysql-backup.sh

crontab -e

# 0 2 * * * root /mysql-backup.sh