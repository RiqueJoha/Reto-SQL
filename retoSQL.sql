
CREATE DATABASE catcafe_db;

USE catcafe_db;

SHOW DATABASES;

CREATE TABLE gatitos(
nombre VARCHAR(30) NOT NULL,
apodo VARCHAR(30),
edad INT,
peso FLOAT,
gustos VARCHAR(50),
descripcion VARCHAR(50),
color VARCHAR (30),
ojos VARCHAR (30)
);

ALTER TABLE gatitos
ADD COLUMN id_gatitos INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id_gatitos);


SHOW TABLES;


INSERT INTO gatitos (Nombre, Apodo,Edad, Peso, Gustos, Descripcion, Color, Ojos)
VALUES
  ('Rocket',NULL, 3, 3.0, 'le gusta dormir mucho', 'llego junto con Sunny', 'blanco', 'celestes'),
  ('Pinto','Pin', 5, 3.5, 'le gustan los mimos', NULL, 'naranja con blanco', 'amarillo con verde'),
  ('Sunny',NULL, 2, 5.0, 'le encanta jugar con pelotitas', NULL, 'negro', 'amarillentos'),
  ('Emelia','Emeli', 5, 4.4, 'le encanta reposar donde hay sol', 'llego junto con Seiko', 'gris con negro', 'amarillentos'),
  ('Nikki',NULL, 4, 4.3, 'no se despega de Ricochet', NULL, 'gris', 'verdes claros'),
  ('Ricochet',NULL, 4, 4.7, 'le gustan los lugares altos', NULL, 'blanco con gris', 'celestes'),
  ('Onyx',NULL, 7, 3.3, 'va donde hay comida', NULL, 'naranja con marron', 'amarillentos'),
  ('Seiko',NULL, 2, 3.7, 'le gusta dormir junto a otros gatos', NULL, 'blanco con gris', 'verdosos'),
  ('Nathan','Ninja nate',7, 4.5, 'le encanta esconderse', NULL, 'negro', 'amarillentos');

SELECT * FROM gatitos;


ALTER TABLE gatitos
  ALTER COLUMN apodo SET DEFAULT 'no tiene';

UPDATE gatitos SET apodo = default WHERE apodo IS NULL;

ALTER TABLE gatitos ALTER COLUMN apodo DROP DEFAULT;

ALTER TABLE gatitos ALTER COLUMN apodo SET DEFAULT NULL;

UPDATE gatitos SET apodo = NULL WHERE apodo = 'no tiene';

ALTER TABLE gatitos
  ALTER COLUMN descripcion SET DEFAULT 'llega solito';

UPDATE gatitos SET descripcion = default WHERE descripcion IS NULL;

ALTER TABLE gatitos ALTER COLUMN descripcion DROP DEFAULT;

ALTER TABLE gatitos ALTER COLUMN descripcion SET DEFAULT NULL;

UPDATE gatitos SET descripcion = NULL WHERE descripcion = 'llega solito';

ALTER TABLE gatitos ADD COLUMN dieta BOOLEAN;

ALTER TABLE gatitos MODIFY dieta BOOLEAN AFTER peso;

UPDATE gatitos SET dieta = (peso > 4);

ALTER TABLE gatitos ADD COLUMN años_jubilacion INT;

ALTER TABLE gatitos MODIFY años_jubilacion BOOLEAN AFTER edad;

UPDATE gatitos SET años_jubilacion = 11 - edad;

INSERT INTO gatitos (nombre, apodo, edad, peso,gustos, descripcion, color, ojos)
VALUES ('Toffee', 'Tofisito', 4, 3.4, 'jugar y estar solo a veces', NULL, 'blanco con gris', 'verdosos');

INSERT INTO gatitos (nombre, apodo, edad, peso, gustos, descripcion, color, ojos)
VALUES ('Chucky', NULL, 10, 4.3, 'dormir y caminar', NULL, 'naranja con blanco', 'amarillentos');

UPDATE gatitos SET dieta = (peso > 4);

UPDATE gatitos SET años_jubilacion = 11 - edad;


















