
CREATE TABLE ATMDetails(
    ID INT,
    AccountNumber INT NOT NULL,
    ATMPin INT NOT NULL,
    PRIMARY KEY(ID,AccountNumber)
);
CREATE TABLE CheckbookDetails(
    CheckbookID INT NOT NULL,
    AccountNumber INT NOT NULL,
    RequestedDate DATE NOT NULL,
    IssueDate DATE NOT NULL,
    Priority INT DEFAULT(3),
    PRIMARY KEY(CheckbookID)
);
CREATE TABLE FundTransfer(
    TransferID INT,
    SourceAccountNumber INT NOT NULL,
    DestinationAccountNumber INT NOT NULL,
    DestinationAccountTypeID INT NOT NULL,
    TranferAmount INT NOT NULL,
    PRIMARY KEY(TransferID) 
);
CREATE TABLE Transactions(
    TransactionID INT,
    AccountNumber INT NOT NULL,
    AccountTypeID INT NOT NULL,
    TransactionType VARCHAR(20) NOT NULL,
    Transactiondate DATE NOT NULL,
    Amount INT NOT NULL,
    PRIMARY KEY(TransactionID)
);
CREATE TABLE Users(
    AccountNumber INT,
    FirstName VARCHAR(20) NOT NULL,
    MiddleName VARCHAR(20),
    LastName VARCHAR(20) NOT NULL,
    Username VARCHAR(20) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    SecurityQuestions VARCHAR(50) NOT NULL,
    SecurityAnswers VARCHAR(20) NOT NULL,
    AccountTypeID INT NOT NULL,
    MobileNumber INT NOT NULL,
    PRIMARY KEY(AccountNumber)
);