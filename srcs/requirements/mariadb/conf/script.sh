
service mysql start
#mysql -u root -pPASSWORD -e "CREATE DATABASE IF NOT EXISTS '${WP_DB_NAME}';"
#mysql -u root -pPASSWORD -e  "CREATE USER IF NOT EXISTS '{$WP_DB_USER}'@'%' IDENTIFIED BY '${WP_DB_PASSWORD}';"
#mysql -u root -pPASSWORD -e  "USE mydb;"
#mysql -u root -pPASSWORD -e  "GRANT ALL PRIVILEGES ON'${WP_DB_NAME}'.* TO '${WP_DB_USER}'@'%' IDENTIFIED BY '${WP_DB_PASSWORD}';"
mysql -u root -e  "CREATE DATABASE IF NOT EXISTS ${DB_NAME}; flush privileges;"
   #mysql -u root -e "use wordpress; grant all privileges on *.* to 'yhebbat'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
mysql -u root -e "grant all privileges on *.* to '${USER}'@'%' IDENTIFIED BY '${USER_PASSWORD}'; flush privileges;"
mysql < /database.sql -u ${USER} -p${USER_PASSWORD} ${DB_NAME}
mysqladmin -u root -pPASSWORD shutdown
# mysqladmin -u root -p$DB_ROOT_PASSWORD shutdown
#service mysql stop
#echo HELLOW
mysqld_safe
#bash