-- MySQL Workbench Synchronization
-- Generated: 2023-12-01 09:07
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: LENOVO

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE DATABASE IF NOT EXISTS `ciokolate` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `ciokolate`.`user` (
  `user_id` INT(8) NOT NULL,
  `user_name` VARCHAR(32) NOT NULL,
  `user_last_name` VARCHAR(90) NOT NULL,
  `user_phone` INT(9) NOT NULL,
  `user_email` VARCHAR(255) NOT NULL,
  `user_addres` VARCHAR(45) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;

CREATE TABLE IF NOT EXISTS `ciokolate`.`category` (
  `category_id` VARCHAR(10) NOT NULL,
  `category_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;

CREATE TABLE IF NOT EXISTS `ciokolate`.`product` (
  `product_id` VARCHAR(12) NOT NULL,
  `product_name` VARCHAR(45) NOT NULL,
  `product_desc` VARCHAR(200) NOT NULL,
  `product_price` INT(6) NOT NULL,
  `product_stock` VARCHAR(45) NOT NULL,
  `category_id` VARCHAR(10) NOT NULL,
  `inventory_inventory_id` INT(8) NOT NULL,
  PRIMARY KEY (`product_id`, `category_id`, `inventory_inventory_id`),
  INDEX `fk_product_category_idx` (`category_id` ASC) VISIBLE,
  INDEX `fk_product_inventory1_idx` (`inventory_inventory_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `ciokolate`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_inventory1`
    FOREIGN KEY (`inventory_inventory_id`)
    REFERENCES `ciokolate`.`inventory` (`inventory_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;

CREATE TABLE IF NOT EXISTS `ciokolate`.`inventory` (
  `inventory_id` INT(8) NOT NULL,
  `inventory_stock` INT(4) NOT NULL,
  PRIMARY KEY (`inventory_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;

CREATE TABLE IF NOT EXISTS `ciokolate`.`details` (
  `details_id` VARCHAR(45) NOT NULL,
  `details_create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL DEFAULT NULL,
  `details_amount` VARCHAR(45) NOT NULL,
  `details_state` VARCHAR(45) NOT NULL,
  `details_value` VARCHAR(45) NOT NULL,
  `user_id` INT(8) NOT NULL,
  `product_id` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`details_id`, `user_id`, `product_id`),
  INDEX `fk_details_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_details_product1_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_details_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `ciokolate`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_details_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `ciokolate`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;

CREATE TABLE IF NOT EXISTS `ciokolate`.`voucher` (
  `voucher_id` INT(11) NOT NULL AUTO_INCREMENT,
  `voucher_create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `voucher_amount` INT(45) NOT NULL,
  `voucher_type` VARCHAR(45) NOT NULL,
  `voucher_state` VARCHAR(45) NOT NULL,
  `user_id` INT(8) NOT NULL,
  `details_id` VARCHAR(45) NOT NULL,
  `product_id` VARCHAR(12) NOT NULL,
  `method_pay_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`voucher_id`, `user_id`, `details_id`, `product_id`, `method_pay_name`),
  INDEX `fk_voucher_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_voucher_details1_idx` (`details_id` ASC, `product_id` ASC) VISIBLE,
  INDEX `fk_voucher_method_pay1_idx` (`method_pay_name` ASC) VISIBLE,
  CONSTRAINT `fk_voucher_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `ciokolate`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_voucher_details1`
    FOREIGN KEY (`details_id` , `product_id`)
    REFERENCES `ciokolate`.`details` (`details_id` , `product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_voucher_method_pay1`
    FOREIGN KEY (`method_pay_name`)
    REFERENCES `ciokolate`.`method_pay` (`method_pay_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;

CREATE TABLE IF NOT EXISTS `ciokolate`.`method_pay` (
  `method_pay_name` VARCHAR(20) NOT NULL,
  `method_pay_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`method_pay_name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;

CREATE TABLE IF NOT EXISTS `ciokolate`.`inventory_mov` (
  `idinventory_mov` INT(11) ZEROFILL NOT NULL AUTO_INCREMENT,
  `inventory_mov_stock` INT(4) NOT NULL,
  `inventory_mov_type` VARCHAR(20) NOT NULL,
  `inventory_movcol` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inventory_mov_detail` VARCHAR(45) NOT NULL,
  `inventory_inventory_id` INT(8) NOT NULL,
  `voucher_voucher_id` INT(11) NOT NULL,
  `voucher_user_id` INT(8) NOT NULL,
  `voucher_details_id` VARCHAR(45) NOT NULL,
  `voucher_product_id` VARCHAR(12) NOT NULL,
  `voucher_method_pay_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idinventory_mov`, `inventory_inventory_id`, `voucher_voucher_id`, `voucher_user_id`, `voucher_details_id`, `voucher_product_id`, `voucher_method_pay_name`),
  INDEX `fk_inventory_mov_inventory1_idx` (`inventory_inventory_id` ASC) VISIBLE,
  INDEX `fk_inventory_mov_voucher1_idx` (`voucher_voucher_id` ASC, `voucher_user_id` ASC, `voucher_details_id` ASC, `voucher_product_id` ASC, `voucher_method_pay_name` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_mov_inventory1`
    FOREIGN KEY (`inventory_inventory_id`)
    REFERENCES `ciokolate`.`inventory` (`inventory_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inventory_mov_voucher1`
    FOREIGN KEY (`voucher_voucher_id` , `voucher_user_id` , `voucher_details_id` , `voucher_product_id` , `voucher_method_pay_name`)
    REFERENCES `ciokolate`.`voucher` (`voucher_id` , `user_id` , `details_id` , `product_id` , `method_pay_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf32
COLLATE = utf32_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
