-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema moviedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `moviedb` ;

-- -----------------------------------------------------
-- Schema moviedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `moviedb` DEFAULT CHARACTER SET utf8 ;
USE `moviedb` ;

-- -----------------------------------------------------
-- Table `movie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movie` ;

CREATE TABLE IF NOT EXISTS `movie` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `release_year` VARCHAR(4) NULL DEFAULT NULL,
  `image_url` VARCHAR(2000) NULL DEFAULT NULL,
  `length` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS movieuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'movieuser'@'localhost' IDENTIFIED BY 'movieuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'movieuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `movie`
-- -----------------------------------------------------
START TRANSACTION;
USE `moviedb`;
INSERT INTO `movie` (`id`,`title`,`description`,`release_year`,`image_url`,`length`) VALUES (1,'Princess Mononoke','Princess Mononoke (Japanese: もののけ姫, Hepburn: Mononoke-hime) is a 1997 Japanese animated epic historical fantasy film written and directed by Hayao Miyazaki and animated by Studio Ghibli for Tokuma Shoten, Nippon Television Network and Dentsu. The film stars the voices of Yōji Matsuda, Yuriko Ishida, Yūko Tanaka, Kaoru Kobayashi, Masahiko Nishimura, Tsunehiko Kamijo, Akihiro Miwa, Mitsuko Mori, and Hisaya Morishige.','1997','https://upload.wikimedia.org/wikipedia/en/8/8c/Princess_Mononoke_Japanese_poster.png','133');
INSERT INTO `movie` (`id`,`title`,`description`,`release_year`,`image_url`,`length`) VALUES (2,'Serenity','Serenity is a 2005 American space Western film written and directed by Joss Whedon in his feature directorial debut. The film is a continuation of Whedon\'s short-lived 2002 Fox television series Firefly and stars the same cast, taking place after the events of the final episode. Set in 2517, Serenity is the story of the crew of Serenity, a \"Firefly-class\" spaceship. The captain and first mate are veterans of the Unification War, having fought on the losing Independent side against the Alliance. Their lives of smuggling and cargo-running are interrupted by a psychic passenger who harbors a dangerous secret.','2005','https://upload.wikimedia.org/wikipedia/en/9/9e/Serenity_One_Sheet.jpg','119');
INSERT INTO `movie` (`id`,`title`,`description`,`release_year`,`image_url`,`length`) VALUES (3,'Star Wars: Return of the Jedi','Return of the Jedi (also known as Star Wars: Episode VI – Return of the Jedi) is a 1983 American epic space opera. Set one year after The Empire Strikes Back, the Galactic Empire is constructing a second Death Star to exterminate the Rebel Alliance. After Luke Skywalker and his friends free Han Solo from Jabba the Hutt, the Rebel fleet launches an attack on the Death Star in hopes of destroying both it and the Emperor, while Luke struggles to bring his father, Darth Vader, back to the light side of the Force.','1983','https://upload.wikimedia.org/wikipedia/en/b/b2/ReturnOfTheJediPoster1983.jpg','132');
INSERT INTO `movie` (`id`,`title`,`description`,`release_year`,`image_url`,`length`) VALUES (4,'The Lord of the Rings: The Two Towers','The Lord of the Rings: The Two Towers is a 2002 epic fantasy adventure. Continuing the plot of the previous film, it intercuts three storylines: Frodo and Sam continue their journey towards Mordor to destroy the One Ring, now aided by Gollum, the ring\'s untrustworthy former bearer. Merry and Pippin escape their orc captors, meet Treebeard the Ent, and help to plan an attack on Isengard, fortress of Saruman. Aragorn, Legolas, and Gimli, in their pursuit, come to the war-torn nation of Rohan, and are reunited with the resurrected Gandalf before fighting against the legions of the treacherous wizard Saruman at the Battle of Helm\'s Deep.','2002','https://upload.wikimedia.org/wikipedia/en/f/fc/The_Lord_of_the_Rings%2C_T2T_%282002%29.jpg','179');
INSERT INTO `movie` (`id`,`title`,`description`,`release_year`,`image_url`,`length`) VALUES (5,'Talladega Nights: The Ballad of Ricky Bobby','NASCAR superstar Ricky Bobby (Will Ferrell) is at the top of his game; adored by fans, a trophy wife by his side, and incredible wealth. But Ricky loses it all when French Formula One champion Jean Girard (Sacha Baron Cohen) roars onto the scene. Ricky, with the help of his ruthless father, must pull himself out of the depths of despair and restore his honor on the racetrack.','2006','https://upload.wikimedia.org/wikipedia/en/e/e7/Talladega_nights.jpg','108');

COMMIT;

