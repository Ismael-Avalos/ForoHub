package com.aluracursos.forohub.controller;

import com.aluracursos.forohub.domain.user.AutenticacionUsuarioDTO;
import com.aluracursos.forohub.domain.user.Usuario;
import com.aluracursos.forohub.infra.security.JWTTokenDTO;
import com.aluracursos.forohub.infra.security.TokenService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/login")
public class AutenticacionController {
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private TokenService tokenService;
    @PostMapping
    public ResponseEntity autenticarUsuario(@RequestBody @Valid AutenticacionUsuarioDTO autenticacionUsuarioDTO){
        Authentication authToken = new UsernamePasswordAuthenticationToken(autenticacionUsuarioDTO.nombre(),
                autenticacionUsuarioDTO.contrasena());
        var usuarioAutenticado = authenticationManager.authenticate(authToken);
        var JWTtoken = tokenService.generarToken((Usuario) usuarioAutenticado);
        return ResponseEntity.ok(new JWTTokenDTO(JWTtoken));
    }
}
