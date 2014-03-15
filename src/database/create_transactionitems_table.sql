use buzz;

CREATE TABLE TransactionItems
(
	TransactionItemKey BIGINT NOT NULL AUTO_INCREMENT,
	TransactionItemId CHAR(36) NOT NULL,
	FromAccountId CHAR(36) NOT NULL,
	ToAccountId CHAR(36) NOT NULL,
	Amount MEDIUMINT UNSIGNED Default 0,
	INDEX (TransactionItemKey),
	PRIMARY KEY (TransactionItemId)
) ENGINE = InnoDB;
