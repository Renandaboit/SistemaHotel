package renan.daboitsky.sistemaHotel.dto.cliente;

import java.sql.Date;

public record ClienteResponse(
        Long id,
        String nome,
        String cpf,
        String email,
        String telefone,
        Date dataNascimento,
        String endereco
) {}
