package renan.daboitsky.sistemaHotel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import renan.daboitsky.sistemaHotel.model.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {
}
