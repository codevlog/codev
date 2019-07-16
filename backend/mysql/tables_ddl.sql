-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema codev
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema codev
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `codev` DEFAULT CHARACTER SET utf8 ;
USE `codev` ;

-- -----------------------------------------------------
-- Table `codev`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`users` (
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(64) NOT NULL,
  `name` VARCHAR(64) NOT NULL,
  `nickname` VARCHAR(64) NOT NULL,
  `image_url` VARCHAR(512) NOT NULL,
  `information` TEXT NULL,
  PRIMARY KEY (`email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `codev`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `body` TEXT NOT NULL,
  `written_date` DATE NOT NULL,
  `image_url` VARCHAR(512) NULL,
  `user_email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_posts_users1_idx` (`user_email` ASC) VISIBLE,
  CONSTRAINT `fk_posts_users`
    FOREIGN KEY (`user_email`)
    REFERENCES `codev`.`users` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `codev`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `post_id` INT NOT NULL,
  `body` TEXT NOT NULL,
  `written_date` DATE NOT NULL,
  `user_email` VARCHAR(255) NOT NULL,
  `parent_comment_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comments_posts_idx` (`post_id` ASC) VISIBLE,
  INDEX `fk_comments_users1_idx` (`user_email` ASC) VISIBLE,
  INDEX `fk_comments_comments1_idx` (`parent_comment_id` ASC) VISIBLE,
  CONSTRAINT `fk_comments_posts`
    FOREIGN KEY (`post_id`)
    REFERENCES `codev`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_users`
    FOREIGN KEY (`user_email`)
    REFERENCES `codev`.`users` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_comments`
    FOREIGN KEY (`parent_comment_id`)
    REFERENCES `codev`.`comments` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `codev`.`tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`tags` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `ref_count` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `codev`.`portfolios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`portfolios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `body` TEXT NOT NULL,
  `written_date` DATE NOT NULL,
  `image_url` VARCHAR(512) NULL,
  `user_email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_portfolios_users1_idx` (`user_email` ASC) VISIBLE,
  CONSTRAINT `fk_portfolios_users`
    FOREIGN KEY (`user_email`)
    REFERENCES `codev`.`users` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `codev`.`portfolios_has_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`portfolios_has_tags` (
  `portfolio_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  PRIMARY KEY (`portfolio_id`, `tag_id`),
  INDEX `fk_portfolioes_has_tags_tags1_idx` (`tag_id` ASC) VISIBLE,
  INDEX `fk_portfolioes_has_tags_portfolioes1_idx` (`portfolio_id` ASC) VISIBLE,
  CONSTRAINT `fk_portfolioes_has_tags_portfolioes`
    FOREIGN KEY (`portfolio_id`)
    REFERENCES `codev`.`portfolios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_portfolioes_has_tags_tags`
    FOREIGN KEY (`tag_id`)
    REFERENCES `codev`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `codev`.`posts_has_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`posts_has_tags` (
  `post_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  PRIMARY KEY (`post_id`, `tag_id`),
  INDEX `fk_posts_has_tags_tags1_idx` (`tag_id` ASC) VISIBLE,
  INDEX `fk_posts_has_tags_posts1_idx` (`post_id` ASC) VISIBLE,
  CONSTRAINT `fk_posts_has_tags_posts`
    FOREIGN KEY (`post_id`)
    REFERENCES `codev`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_posts_has_tags_tags`
    FOREIGN KEY (`tag_id`)
    REFERENCES `codev`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `codev`.`users_has_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `codev`.`users_has_tags` (
  `user_email` VARCHAR(255) NOT NULL,
  `tag_id` INT NOT NULL,
  PRIMARY KEY (`user_email`, `tag_id`),
  INDEX `fk_users_has_tags_tags1_idx` (`tag_id` ASC) VISIBLE,
  INDEX `fk_users_has_tags_users1_idx` (`user_email` ASC) VISIBLE,
  CONSTRAINT `fk_users_has_tags_users`
    FOREIGN KEY (`user_email`)
    REFERENCES `codev`.`users` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_tags_tags`
    FOREIGN KEY (`tag_id`)
    REFERENCES `codev`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
