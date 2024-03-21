-- INSERTAR DATOS A TABLA alumnos
INSERT INTO alumnos (nombre_alumno, email)
VALUES
  ('Jafet Casals', 'Jafet_Casals@gmail.com'),
  ('Jorge Manzanares', 'Jorge_Manzanares@gmail.com'),
  ('Onofre Adadia', 'Onofre_Adadia@gmail.com'),
  ('Merche Prada', 'Merche_Prada@gmail.com'),
  ('Pilar Abella', 'Pilar_Abella@gmail.com'),
  ('Leoncio Tena', 'Leoncio_Tena@gmail.com'),
  ('Odalys Torrijos', 'Odalys_Torrijos@gmail.com'),
  ('Eduardo Caparrós', 'Eduardo_Caparrós@gmail.com'),
  ('Ignacio Goicoechea', 'Ignacio_Goicoechea@gmail.com'),
  ('Clementina Santos', 'Clementina_Santos@gmail.com'),
  ('Daniela Falcó', 'Daniela_Falcó@gmail.com'),
  ('Abraham Vélez', 'Abraham_Vélez@gmail.com'),
  ('Maximiliano Menéndez', 'Maximiliano_Menéndez@gmail.com'),
  ('Anita Heredia', 'Anita_Heredia@gmail.com'),
  ('Eli Casas', 'Eli_Casas@gmail.com'),
  ('Guillermo Borrego', 'Guillermo_Borrego@gmail.com'),
  ('Sergio Aguirre', 'Sergio_Aguirre@gmail.com'),
  ('Carlito Carrión', 'Carlito_Carrión@gmail.com'),
  ('Haydée Figueroa', 'Haydée_Figueroa@gmail.com'),
  ('Chita Mancebo', 'Chita_Mancebo@gmail.com'),
  ('Joaquina Asensio', 'Joaquina_Asensio@gmail.com'),
  ('Cristian Sarabia', 'Cristian_Sarabia@gmail.com'),
  ('Isabel Ibáñez', 'Isabel_Ibáñez@gmail.com'),
  ('Desiderio Jordá', 'Desiderio_Jordá@gmail.com'),
  ('Rosalina Llanos', 'Rosalina_Llanos@gmail.com'),
   ('Amor Larrañaga', 'Amor_Larrañaga@gmail.com'),
  ('Teodoro Alberola', 'Teodoro_Alberola@gmail.com'),
  ('Cleto Plana', 'Cleto_Plana@gmail.com'),
  ('Aitana Sebastián', 'Aitana_Sebastián@gmail.com'),
  ('Dolores Valbuena', 'Dolores_Valbuena@gmail.com'),
  ('Julie Ferrer', 'Julie_Ferrer@gmail.com'),
  ('Mireia Cabañas', 'Mireia_Cabañas@gmail.com'),
  ('Flavia Amador', 'Flavia_Amador@gmail.com'),
  ('Albino Macias', 'Albino_Macias@gmail.com'),
  ('Ester Sánchez', 'Ester_Sánchez@gmail.com'),
  ('Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com'),
  ('Loida Arellano', 'Loida_Arellano@gmail.com'),
  ('Heraclio Duque', 'Heraclio_Duque@gmail.com'),
  ('Herberto Figueras', 'Herberto_Figueras@gmail.com'),
   ('Teresa Laguna', 'Teresa_Laguna@gmail.com'),
  ('Estrella Murillo', 'Estrella_Murillo@gmail.com'),
  ('Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com'),
  ('Daniela Guitart', 'Daniela_Guitart@gmail.com'),
  ('Timoteo Trillo', 'Timoteo_Trillo@gmail.com'),
  ('Ricarda Tovar', 'Ricarda_Tovar@gmail.com'),
  ('Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com'),
  ('Daniel Rosselló', 'Daniel_Rosselló@gmail.com'),
  ('Rita Olivares', 'Rita_Olivares@gmail.com'),
  ('Cleto Montes', 'Cleto_Montes@gmail.com'),
  ('Marino Castilla', 'Marino_Castilla@gmail.com'),
  ('Estefanía Valcárcel', 'Estefanía_Valcárcel@gmail.com'),
  ('Noemí Vilanova', 'Noemí_Vilanova@gmail.com');


-- INSERTAR DATOS A TABLA promocion
INSERT INTO promocion (mes_promocion, fecha_comienzo)
VALUES
    ('Febrero', '2023-02-12'),
    ('Septiembre', '2024-09-18');


-- INSERTAR DATOS A calificaciones
INSERT INTO calificaciones (calificacion) 
VALUES
    ('APTO'),
    ('NO APTO');

-- INSERTAR DATOS A campuses

INSERT INTO campuses (nombre_campus, direccion)
VALUES
    ('Madrid', 'P.º de Recoletos, 15, Centro, 28004, Madrid'),
    ('Valencia', 'C/ de Vidal de Blanes, 20, Poblats Marítims, 46024, Valencia');

-- INSERTAR DATOS A verticales
INSERT INTO verticales (nombre_vertical)
VALUES
    ('Data Science'),
    ('Full Stack');


-- INSERTAR DATOS A profesores
INSERT INTO profesores (nombre_profesor)
VALUES 
    ('Noa Yáñez'),
    ('Saturnina Benitez'),
    ('Anna Feliu'),
    ('Rosalva Ayuso'),
    ('Ana Sofía Ferrer'),
    ('Angélica Corral'),
    ('Ariel Lledó'),
    ('Mario Prats'),
    ('Luis Ángel Suárez'),
    ('María Dolores Diaz'),
    ('Paula Domínguez');

-- INSERTAR DATOS A modalidades
INSERT INTO modalidades (nombre_modalidad)
VALUES 
    ('Presencial_PartTime'),
    ('Presencial_FullTime'),
    ('Online_PartTime'),
    ('Online_FullTime');



-- INSERTAR DATOS A roles
INSERT INTO roles(nombre_rol)
VALUES
    ('Lead Instructor'),
    ('Teacher Assistant');


--Insertamos los proyectos que tienen en ambas verticales
INSERT INTO proyectos(nombre_proyecto)
VALUES
  ('HLF'),
  ('EDA'),
  ('BBDD'),
  ('ML'),
  ('Deployment'),
  ('WebDev'),
  ('FrontEnd'),
  ('BackEnd'),
  ('React'),
  ('FullStack');


--insertamos valores en lista clases (lista intermedia con FK id_campus,FK id_promocion)
INSERT INTO clases(id_promocion,id_campus)
VALUES
    (2,1),
    (1,1),
    (2,1),
    (1,2);
-- insertamos los valores de claustro con el id_profesor,id_rol
INSERT INTO claustro(id_clase, id_profesor, id_rol)
VALUES
    (1,1,2),
    (1,2,2),
    (1,11,1),
    (2,10,1),
    (2,7,2),
    (3,8,1),
    (3,3,2),
    (3,4,2),
    (4,9,1),
    (4,5,2);




INSERT INTO historico_alumnado (id_vertical, id_clase, id_modalidad, id_alumno)
VALUES
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Jafet Casals')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Jorge Manzanares')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Onofre Adadia')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Merche Prada')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Pilar Abella')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Leoncio Tena')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Odalys Torrijos')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Eduardo Caparrós')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Ignacio Goicoechea')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Clementina Santos')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Daniela Falcó')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Abraham Vélez')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Maximiliano Menéndez')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Anita Heredia')),
    (1, 1, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Eli Casas')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Guillermo Borrego')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Sergio Aguirre')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Carlito Carrión')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Haydée Figueroa')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Chita Mancebo')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Joaquina Asensio')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Cristian Sarabia')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Isabel Ibáñez')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Desiderio Jordá')),
    (1, 2, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Rosalina Llanos')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Amor Larrañaga')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Teodoro Alberola')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Cleto Plana')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Aitana Sebastián')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Dolores Valbuena')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Julie Ferrer')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Mireia Cabañas')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Mireia Cabañas')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Flavia Amador')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Albino Macias')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Ester Sánchez')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Luis Miguel Galvez')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Loida Arellano')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Heraclio Duque')),
    (2, 3, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Presencial_FullTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Herberto Figueras')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Teresa Laguna')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Estrella Murillo')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Ernesto Uriarte')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Daniela Guitart')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Timoteo Trillo')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Ricarda Tovar')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Alejandra Vilaplana')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Daniel Rosselló')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Rita Olivares')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Cleto Montes')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Marino Castilla')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Estefanía Valcárcel')),
    (2, 4, (SELECT id_modalidad FROM modalidades WHERE nombre_modalidad = 'Online_PartTime'), (SELECT id_alumno FROM alumnos WHERE nombre_alumno = 'Noemí Vilanova'));

