package renan.daboitsky.sistemaHotel.mapper;

import org.springframework.stereotype.Component;
import renan.daboitsky.sistemaHotel.dto.cliente.ClienteRequest;
import renan.daboitsky.sistemaHotel.dto.cliente.ClienteResponse;
import renan.daboitsky.sistemaHotel.dto.cliente.ClienteUpdateRequest;
import renan.daboitsky.sistemaHotel.model.Cliente;

import java.util.List;

@Component
public class ClienteMapper {

    public Cliente toEntity(ClienteRequest request) {
        return Cliente.builder()
                .nome(request.nome())
                .cpf(request.cpf())
                .email(request.email())
                .telefone(request.telefone())
                .dataNascimento(request.dataNascimento())
                .endereco(request.endereco())
                .build();
    }

    public ClienteResponse toResponse(Cliente cliente) {
        return new ClienteResponse(
                cliente.getId(),
                cliente.getNome(),
                cliente.getCpf(),
                cliente.getEmail(),
                cliente.getTelefone(),
                cliente.getDataNascimento(),
                cliente.getEndereco()
        );
    }

    public List<ClienteResponse> toResponseList(List<Cliente> clientes) {
        return clientes.stream().map(this::toResponse).toList();
    }

    public void updateEntity(ClienteUpdateRequest request, Cliente cliente) {
        cliente.setNome(request.nome());
        cliente.setCpf(request.cpf());
        cliente.setEmail(request.email());
        cliente.setTelefone(request.telefone());
        cliente.setDataNascimento(request.dataNascimento());
        cliente.setEndereco(request.endereco());
    }
}
