-- Insertando registros en la tabla usuarios
INSERT INTO usuarios (nombre, email, contrasena)
VALUES
    ('Juan Pérez', 'juan@example.com', '$2a$12$MbgxGtwcJ5NIK3OmddmNXOJNQWJZEjl3zB3YDe.6l8YkduzRobXQW'),
    ('María López', 'maria@example.com', '$2a$12$vN8ovtOmyj3c38PMMnQt0O1.16Or4Jt3UZ80p6o9tgiGjTjArQUIG'),
    ('Carlos Rodríguez', 'carlos@example.com', '$2a$12$2ONaWDvktXfSIKt6JeTIvONCeC7x.E96nzGqGV9y8H9vs4rEWH.la');

-- Insertando registros en la tabla cursos
INSERT INTO cursos (nombre, categoria)
VALUES
    ('Introducción a la Programación', 'Programación'),
    ('Bases de Datos Avanzadas', 'Bases de Datos'),
    ('Diseño Web Responsivo', 'Diseño Web');

-- Insertando registros en la tabla topicos
-- Se asume que los IDs de autores y cursos corresponden a los insertados previamente
INSERT INTO topicos (titulo, mensaje, fecha_creacion, status, autor_id, curso_id)
VALUES
    ('Problema con bucle en Python', 'No puedo resolver un problema de bucle en Python...', CURRENT_TIMESTAMP, true, 1, 1),
    ('Optimización de consultas SQL', '¿Cómo mejorar el rendimiento de mis consultas SQL?', CURRENT_TIMESTAMP, true, 2, 2),
    ('Media queries en CSS', '¿Cómo utilizar correctamente las media queries en CSS?', CURRENT_TIMESTAMP, true, 3, 3);

-- Insertando registros en la tabla respuestas
-- Se asume que los IDs de autores y tópicos corresponden a los insertados previamente
INSERT INTO respuestas (mensaje, fecha_creacion, autor_id, topico_id, solucion)
VALUES
    ('Puedes intentar utilizar un while en lugar de un for.', CURRENT_TIMESTAMP, 1, 1, false),
    ('Asegúrate de indexar correctamente tus tablas.', CURRENT_TIMESTAMP, 2, 2, true),
    ('Aquí tienes un ejemplo práctico...', CURRENT_TIMESTAMP, 3, 3, false);
