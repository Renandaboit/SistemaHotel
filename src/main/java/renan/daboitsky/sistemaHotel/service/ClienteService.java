package renan.daboitsky.sistemaHotel.service;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;
import renan.daboitsky.sistemaHotel.dto.cliente.ClienteRequest;
import renan.daboitsky.sistemaHotel.dto.cliente.ClienteResponse;
import renan.daboitsky.sistemaHotel.dto.cliente.ClienteUpdateRequest;
import renan.daboitsky.sistemaHotel.mapper.ClienteMapper;
import renan.daboitsky.sistemaHotel.model.Cliente;
import renan.daboitsky.sistemaHotel.repository.ClienteRepository;

import java.util.List;

@Service
public class ClienteService {

    private final ClienteRepository repository;
    private final ClienteMapper mapper;

    public ClienteService(ClienteMapper mapper, ClienteRepository repository) {
        this.mapper = mapper;
        this.repository = repository;
    }

    public List<ClienteResponse> listar() {
        return mapper.toResponseList(repository.findAll());
    }

    public ClienteResponse buscar(Long id) {
        return repository.findById(id).map(mapper::toResponse).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Não foi encontrado nenhum cliente com esse ID"));
    }

    public ClienteResponse cadastrar(ClienteRequest request) {
        Cliente cliente = mapper.toEntity(request);

        return mapper.toResponse(repository.save(cliente));
    }

    public ClienteResponse atualizar(Long id, ClienteUpdateRequest request) {
        Cliente cliente = repository.findById(id).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Não foi encontrado nenhum cliente com esse ID"));

        mapper.updateEntity(request, cliente);

        Cliente clienteAtualizado = repository.save(cliente);
        return mapper.toResponse(cliente);
    }

    public void excluir(Long id) {
        Cliente cliente = repository.findById(id).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Não foi encontrado nenhum cliente com esse ID"));

        repository.deleteById(id);
    }
}