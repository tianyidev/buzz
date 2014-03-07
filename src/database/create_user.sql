-- This script will set up the user that we will use
-- The stored procedure is used to clean up user information, it will be dropped once it is used

USE mysql

DROP PROCEDURE IF EXISTS mysql.drop_user_if_exists;
DELIMITER //
CREATE PROCEDURE mysql.drop_user_if_exists()
BEGIN
	DECLARE ct BIGINT DEFAULT 0;
	SELECT COUNT(*) INTO ct FROM mysql.user
		WHERE user = 'buzz' AND host = 'localhost';

	IF ct > 0 THEN
		DROP USER 'buzz'@'localhost';
	END IF;

	SELECT COUNT(*) INTO ct FROM mysql.user
		WHERE user = 'buzz' AND host = '%';

	IF ct > 0 THEN
		DROP USER 'buzz'@'%';
	END IF;
END
//
DELIMITER ;
CALL mysql.drop_user_if_exists();
DROP PROCEDURE IF EXISTS mysql.drop_user_if_exists;

create user 'buzz'@'localhost' identified by 'buzz2014';
grant all privileges on *.* to 'buzz'@'localhost' with grant option;
create user 'buzz'@'%' identified by 'buzz2014';
grant all privileges on *.* to 'buzz'@'%' with grant option;
