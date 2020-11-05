--  Many To One
--  название базы данных - one_to_many_lesson
CREATE DATABASE many_to_many_lesson ENCODING 'UTF-8';
-- название таблицы в конце - cars
CREATE TABLE IF NOT EXISTS cars (
--  поля в базе данных
  id   SERIAL PRIMARY KEY,
  cost INTEGER,
  mark VARCHAR(25)
);

-- строка наполнения таблицы данными
INSERT INTO cars (mark, cost) VALUES ('ford', 100000);
INSERT INTO cars (mark, cost) VALUES ('ford', 10984673);
INSERT INTO cars (mark, cost) VALUES ('mazda', 109573);


-- название таблицы в конце - engines
CREATE TABLE IF NOT EXISTS engines (
  id       SERIAL PRIMARY KEY,
  name     VARCHAR(25) NOT NULL,
  power    INTEGER     NOT NULL
);

-- строка наполнения таблицы данными
INSERT INTO engines (name, power) VALUES ('engine_1', 10003452);
INSERT INTO engines (name, power) VALUES ('engine_2', 123450);
INSERT INTO engines (name, power) VALUES ('engine_3', 13458);


-- название таблицы в конце - cars_engines
CREATE TABLE IF NOT EXISTS cars_engines (
  car_id INTEGER NOT NULL,
  engine_id INTEGER NOT NULL,
  PRIMARY KEY (car_id, engine_id),
  CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES cars (id),
  CONSTRAINT fk_engine_id FOREIGN KEY (engine_id) REFERENCES engines (id)
);


-- строка наполнения таблицы данными
INSERT INTO cars_engines (car_id, engine_id) VALUES (1, 1);
INSERT INTO cars_engines (car_id, engine_id) VALUES (1, 2);

INSERT INTO cars_engines (car_id, engine_id) VALUES (2, 1);
INSERT INTO cars_engines (car_id, engine_id) VALUES (3, 1);




/*

--Тоже самое но для MySQL
CREATE SCHEMA `many_to_many_lesson` ;

CREATE TABLE `many_to_many_lesson`.`cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cost` INT NOT NULL,
  `mark` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id`)
  );


INSERT INTO `many_to_many_lesson`.`cars` (`id`, `cost`, `mark`) VALUES ('1', '100000', 'ford');
INSERT INTO `many_to_many_lesson`.`cars` (`id`, `cost`, `mark`) VALUES ('2', '10984673', 'ford');
INSERT INTO `many_to_many_lesson`.`cars` (`id`, `cost`, `mark`) VALUES ('3', '109573', 'mazda');



CREATE TABLE `many_to_many_lesson`.`engines` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `power` INT NOT NULL,
  PRIMARY KEY (`id`)
  );


INSERT INTO `many_to_many_lesson`.`engines` (`id`, `name`, `power`) VALUES ('1', 'engine_1', '10003452');
INSERT INTO `many_to_many_lesson`.`engines` (`id`, `name`, `power`) VALUES ('2', 'engine_2', '123450');
INSERT INTO `many_to_many_lesson`.`engines` (`id`, `name`, `power`) VALUES ('3', 'engine_3', '13458');


CREATE TABLE `many_to_many_lesson`.`cars_engines` (
  `car_id` INT NOT NULL,
  `engine_id` INT NOT NULL,
  PRIMARY KEY (`car_id`, `engine_id`),
  CONSTRAINT `fk_car_id` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  CONSTRAINT `fk_engine_id` FOREIGN KEY (`engine_id`) REFERENCES `engines` (`id`)
  );


INSERT INTO `many_to_many_lesson`.`cars_engines` (`car_id`, `engine_id`) VALUES ('1', '1');
INSERT INTO `many_to_many_lesson`.`cars_engines` (`car_id`, `engine_id`) VALUES ('1', '2');
INSERT INTO `many_to_many_lesson`.`cars_engines` (`car_id`, `engine_id`) VALUES ('2', '1');
INSERT INTO `many_to_many_lesson`.`cars_engines` (`car_id`, `engine_id`) VALUES ('3', '1');

*/