v_dbName=$1
v_password=$(cat cred | grep password|awk -F"=" '{print $2}')
v_username=$(cat cred | grep username|awk -F"=" '{print $2}')
v_dbHost=db_host.rds.aws.com

echo "mysqldump -h $v_dbHost -u $v_username -p $v_dbhost $v_dbName > /db-backup/$v_dbName.sql"
