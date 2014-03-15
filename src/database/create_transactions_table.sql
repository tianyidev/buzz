use buzz;

CREATE TABLE Transactions
(
	TransactionKey BIGINT NOT NULL AUTO_INCREMENT,
	TransactionId CHAR(36) NOT NULL,
	Category VARCHAR(30),
	Description VARCHAR(1000),
	DateOfTransaction DATE,
	INDEX (TransactionKey),
	PRIMARY KEY (TransactionId)
) ENGINE = InnoDB;
