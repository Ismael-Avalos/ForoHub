package com.aluracursos.forohub.domain.topic;

import com.aluracursos.forohub.domain.course.Curso;
import com.aluracursos.forohub.domain.user.Usuario;

import java.time.LocalDateTime;

public record RespuestaTopicoDTO(
        Long id,
        String titulo,
        String mensaje,
        LocalDateTime fechaCreacion,
        Boolean status,
        Usuario autor,
        Curso curso
) {
}
