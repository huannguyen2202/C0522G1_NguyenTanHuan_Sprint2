package watch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import watch.model.WatchProducer;

public interface IWatchProducerRepository extends JpaRepository<WatchProducer, Integer> {
}
