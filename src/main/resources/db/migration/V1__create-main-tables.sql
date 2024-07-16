CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(300) NOT NULL
);

CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

CREATE TABLE topicos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NUll UNIQUE,
    mensaje VARCHAR(200) NOT NULL UNIQUE,
    fecha_creacion TIMESTAMP NOT NULL,
    status BOOLEAN NOT NULL,
    autor_id INT NOT NULL,
    curso_id INT NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES usuarios(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)

);

CREATE TABLE respuestas (
    id SERIAL PRIMARY KEY,
    mensaje VARCHAR(200) NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL,
    autor_id INT NOT NULL,
    topico_id INT NOT NULL,
    solucion BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (autor_id) REFERENCES usuarios(id),
    FOREIGN KEY (topico_id) REFERENCES topicos(id)
);
