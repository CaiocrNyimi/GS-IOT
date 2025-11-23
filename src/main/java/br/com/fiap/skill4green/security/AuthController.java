package br.com.fiap.skill4green.security;

import br.com.fiap.skill4green.dto.request.LoginRequest;
import br.com.fiap.skill4green.dto.response.LoginResponse;
import br.com.fiap.skill4green.service.AuthService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.extensions.Extension;
import io.swagger.v3.oas.annotations.extensions.ExtensionProperty;
import lombok.RequiredArgsConstructor;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
@Tag(
    name = "Auth",
    description = "Autenticação e geração de JWT",
    extensions = @Extension(properties = @ExtensionProperty(name = "x-order", value = "1"))
)
public class AuthController {

    private final AuthService authService;

    @Operation(
        summary = "Login",
        description = "Autentica um usuário com email e senha e retorna o ID e o token JWT"
    )
    @ApiResponses({
        @ApiResponse(responseCode = "200", description = "Login realizado com sucesso",
            content = @Content(mediaType = "application/json",
                examples = @ExampleObject(value = "{ \"id\": 1, \"token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...\" }")
            )
        ),
        @ApiResponse(responseCode = "401", description = "Credenciais inválidas",
            content = @Content(mediaType = "application/json",
                examples = @ExampleObject(value = "{ \"erro\": \"Usuário inexistente ou senha inválida\" }")
            )
        )
    })
    @PostMapping("/login")
    public ResponseEntity<?> login(
        @io.swagger.v3.oas.annotations.parameters.RequestBody(
            description = "Credenciais de login",
            required = true,
            content = @Content(mediaType = "application/json",
                examples = @ExampleObject(value = "{ \"email\": \"admin@empresa.com\", \"senha\": \"admin123\" }")
            )
        )
        @RequestBody LoginRequest request) {
        try {
            LoginResponse response = authService.autenticar(request);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
                .body(java.util.Map.of("erro", "Usuário inexistente ou senha inválida"));
        }
    }
}