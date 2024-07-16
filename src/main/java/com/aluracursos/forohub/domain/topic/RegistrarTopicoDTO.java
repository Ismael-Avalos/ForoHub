package com.aluracursos.forohub.domain.topic;

import com.aluracursos.forohub.domain.course.Curso;
import com.aluracursos.forohub.domain.user.Usuario;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;

public record RegistrarTopicoDTO(
        @NotBlank
        String titulo,
        @NotBlank
        String mensaje,
        @NotBlank
        Usuario autor,
        @NotBlank
        Curso curso
) {
}
