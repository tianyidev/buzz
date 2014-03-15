use buzz;

CREATE TABLE Accounts
(
	AccountKey BIGINT NOT NULL AUTO_INCREMENT,
	AccountId CHAR(36) NOT NULL,
	Username VARCHAR(30) NOT NULL,
	Email VARCHAR(60) NOT NULL,
	PhoneNumber VARCHAR(20),
	INDEX (AccountKey),
	PRIMARY KEY (AccountId)
) ENGINE = InnoDB;
