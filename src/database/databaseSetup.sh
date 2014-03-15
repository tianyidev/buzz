#!/bin/bash

mysql -hlocalhost -uroot -p < "create_user.sql"

mysql -hlocalhost -ubuzz -pbuzz2014 -e "DROP DATABASE IF EXISTS buzz; CREATE DATABASE buzz;"

mysql -hlocalhost -ubuzz -pbuzz2014 < "create_accounts_table.sql"
mysql -hlocalhost -ubuzz -pbuzz2014 < "create_transactions_table.sql"
mysql -hlocalhost -ubuzz -pbuzz2014 < "create_transactionitems_table.sql"
