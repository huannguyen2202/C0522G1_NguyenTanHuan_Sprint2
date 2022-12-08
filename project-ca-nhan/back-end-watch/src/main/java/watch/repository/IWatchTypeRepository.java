package watch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import watch.model.WatchType;

public interface IWatchTypeRepository extends JpaRepository<WatchType, Integer> {
}
