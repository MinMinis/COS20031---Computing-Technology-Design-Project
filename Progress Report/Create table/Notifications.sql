CREATE TABLE Notifications (
  NotificationID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Title VARCHAR(30) NOT NULL,
  Message VARCHAR(255) NOT NULL,
  SendDate DATETIME NOT NULL,
  UserID INT,
  FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
  StatusID INT,
  FOREIGN KEY (StatusID) REFERENCES Status(StatusID) ON DELETE CASCADE,
  Type VARCHAR(55) NOT NULL
);