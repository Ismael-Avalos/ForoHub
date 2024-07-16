package com.aluracursos.forohub.controller;

import com.aluracursos.forohub.domain.topic.RegistrarTopicoDTO;
import com.aluracursos.forohub.domain.topic.RespuestaTopicoDTO;
import com.aluracursos.forohub.domain.topic.Topico;
import com.aluracursos.forohub.domain.topic.TopicoRepositorio;
import jakarta.transaction.Transactional;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;

@RestController
@RequestMapping("/topicos")
public class TopicoController {
//    @Autowired
//    private TopicoRepositorio topicoRepositorio;
//    @PostMapping
//    @Transactional
//    public void registrarTopico(@RequestBody @Valid RegistrarTopicoDTO datosRegistroTopico) {
//        topicoRepositorio.save(new Topico(datosRegistroTopico));
//    }

}

