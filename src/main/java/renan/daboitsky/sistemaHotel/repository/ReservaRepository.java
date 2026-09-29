package renan.daboitsky.sistemaHotel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import renan.daboitsky.sistemaHotel.model.Reserva;

public interface ReservaRepository extends JpaRepository<Reserva, Long> {
}
