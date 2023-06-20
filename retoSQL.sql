
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
  ('Rocket','NULL', 3, 3.0, 'le gusta dormir mucho', 'llego junto con Sunny', 'blanco', 'celestes'),
  ('Pinto','Pin', 5, 3.5, 'le gustan los mimos', 'NULL', 'naranja con blanco', 'amarillo con verde'),
  ('Sunny','NULL', 2, 5.0, 'le encanta jugar con pelotitas', 'NULL', 'negro', 'amarillentos'),
  ('Emelia','Emeli', 5, 4.4, 'le encanta reposar donde hay sol', 'llego junto con Seiko', 'gris con negro', 'amarillentos'),
  ('Nikki','NULL', 4, 4.3, 'no se despega de Ricochet', 'NULL', 'gris', 'verdes claros'),
  ('Ricochet','NULL', 4, 4.7, 'le gustan los lugares altos', 'NULL', 'blanco con gris', 'celestes'),
  ('Onyx','NULL', 7, 3.3, 'va donde hay comida', 'NULL', 'naranja con marron', 'amarillentos'),
  ('Seiko','NULL', 2, 3.7, 'le gusta dormir junto a otros gatos', 'NULL', 'blanco con gris', 'verdosos'),
  ('Nathan','Ninja nate',7, 4.5, 'le encanta esconderse', 'NULL', 'negro', 'amarillentos');

SELECT * FROM gatitos;