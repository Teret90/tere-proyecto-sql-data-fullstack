CREATE TABLE "calificaciones"(
    "id_nota" SERIAL NOT NULL,
    "calificacion" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "calificaciones" ADD PRIMARY KEY("id_nota");
CREATE TABLE "proyectos"(
    "id_proyecto" SERIAL NOT NULL,
    "nombre_proyecto" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "proyectos" ADD PRIMARY KEY("id_proyecto");
CREATE TABLE "modalidades"(
    "id_modalidad" SERIAL NOT NULL,
    "nombre_modalidad" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "modalidades" ADD PRIMARY KEY("id_modalidad");
CREATE TABLE "historico_alumnado"(
    "id_historico" SERIAL NOT NULL,
    "id_vertical" BIGINT NOT NULL,
    "id_clase" BIGINT NOT NULL,
    "id_modalidad" BIGINT NOT NULL,
    "id_alumno" BIGINT NOT NULL
);
ALTER TABLE
    "historico_alumnado" ADD PRIMARY KEY("id_historico");
CREATE TABLE "claustro"(
    "id_claustro" SERIAL NOT NULL,
    "id_clase" BIGINT NOT NULL,
    "id_profesor" BIGINT NOT NULL,
    "id_rol" BIGINT NOT NULL
);
ALTER TABLE
    "claustro" ADD PRIMARY KEY("id_claustro");
CREATE TABLE "proyectos_notas"(
    "id_proyecto_nota" SERIAL NOT NULL,
    "id_proyecto" BIGINT NOT NULL,
    "id_nota" BIGINT NOT NULL,
    "id_alumno" BIGINT NOT NULL
);
ALTER TABLE
    "proyectos_notas" ADD PRIMARY KEY("id_proyecto_nota");
CREATE TABLE "clases"(
    "id_clase" SERIAL NOT NULL,
    "id_promocion" BIGINT NOT NULL,
    "id_campus" BIGINT NOT NULL
);
ALTER TABLE
    "clases" ADD PRIMARY KEY("id_clase");
CREATE TABLE "campuses"(
    "id_campus" SERIAL NOT NULL,
    "nombre_campus" VARCHAR(255) NOT NULL,
    "direccion" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "campuses" ADD PRIMARY KEY("id_campus");
CREATE TABLE "profesores"(
    "id_profesor" SERIAL NOT NULL,
    "nombre_profesor" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "profesores" ADD PRIMARY KEY("id_profesor");
CREATE TABLE "promocion"(
    "id_promocion" SERIAL NOT NULL,
    "mes_promocion" VARCHAR(255) NOT NULL,
    "fecha_comienzo" DATE NOT NULL
);
ALTER TABLE
    "promocion" ADD PRIMARY KEY("id_promocion");
CREATE TABLE "alumnos"(
    "id_alumno" SERIAL NOT NULL,
    "nombre_alumno" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "alumnos" ADD PRIMARY KEY("id_alumno");
CREATE TABLE "roles"(
    "id_rol" SERIAL NOT NULL,
    "nombre_rol" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "roles" ADD PRIMARY KEY("id_rol");
CREATE TABLE "verticales"(
    "id_vertical" SERIAL NOT NULL,
    "nombre_vertical" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "verticales" ADD PRIMARY KEY("id_vertical");
ALTER TABLE
    "historico_alumnado" ADD CONSTRAINT "historico_alumnado_id_alumno_foreign" FOREIGN KEY("id_alumno") REFERENCES "alumnos"("id_alumno");
ALTER TABLE
    "historico_alumnado" ADD CONSTRAINT "historico_alumnado_id_clase_foreign" FOREIGN KEY("id_clase") REFERENCES "clases"("id_clase");
ALTER TABLE
    "proyectos_notas" ADD CONSTRAINT "proyectos_notas_id_alumno_foreign" FOREIGN KEY("id_alumno") REFERENCES "alumnos"("id_alumno");
ALTER TABLE
    "proyectos_notas" ADD CONSTRAINT "proyectos_notas_id_nota_foreign" FOREIGN KEY("id_nota") REFERENCES "calificaciones"("id_nota");
ALTER TABLE
    "claustro" ADD CONSTRAINT "claustro_id_rol_foreign" FOREIGN KEY("id_rol") REFERENCES "roles"("id_rol");
ALTER TABLE
    "clases" ADD CONSTRAINT "clases_id_campus_foreign" FOREIGN KEY("id_campus") REFERENCES "campuses"("id_campus");
ALTER TABLE
    "historico_alumnado" ADD CONSTRAINT "historico_alumnado_id_vertical_foreign" FOREIGN KEY("id_vertical") REFERENCES "verticales"("id_vertical");
ALTER TABLE
    "proyectos_notas" ADD CONSTRAINT "proyectos_notas_id_proyecto_foreign" FOREIGN KEY("id_proyecto") REFERENCES "proyectos"("id_proyecto");
ALTER TABLE
    "clases" ADD CONSTRAINT "clases_id_promocion_foreign" FOREIGN KEY("id_promocion") REFERENCES "promocion"("id_promocion");
ALTER TABLE
    "claustro" ADD CONSTRAINT "claustro_id_profesor_foreign" FOREIGN KEY("id_profesor") REFERENCES "profesores"("id_profesor");
ALTER TABLE
    "claustro" ADD CONSTRAINT "claustro_id_clase_foreign" FOREIGN KEY("id_clase") REFERENCES "clases"("id_clase");
ALTER TABLE
    "historico_alumnado" ADD CONSTRAINT "historico_alumnado_id_modalidad_foreign" FOREIGN KEY("id_modalidad") REFERENCES "modalidades"("id_modalidad");