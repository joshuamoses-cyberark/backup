docker exec conjur-appliance evoke replication sync stop
#key generation
docker exec conjur-appliance openssl rand -out /opt/conjur/backup/key -base64 64
docker exec conjur-appliance evoke backup
docker exec conjur-appliance evoke unpack backup --key /keypath/key /backup/backupfile
