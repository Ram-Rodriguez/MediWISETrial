CREATE SCHEMA `mediwise` ;

CREATE TABLE `mediwise`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `firstName` VARCHAR(100) NULL,
  `lastName` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `password` VARCHAR(100) NULL,
  `status` VARCHAR(20) NULL,
  `role` VARCHAR(20) NULL,
  PRIMARY KEY (`id`),
  UNIQUE(email)
);

INSERT INTO `mediwise`.`user` (`username`, `email`, `password`, `status`, `role`) VALUES ('Admin', 'admin@gmail.com', 'admin', 'true', 'admin');

ALTER TABLE `mediwise`.`user` 
ADD COLUMN `contactNumber` VARCHAR(45) NULL AFTER `role`;

ALTER TABLE `mediwise`.`user` 
CHANGE COLUMN `contactNumber` `contactNumber` VARCHAR(45) NULL DEFAULT NULL AFTER `password`;

