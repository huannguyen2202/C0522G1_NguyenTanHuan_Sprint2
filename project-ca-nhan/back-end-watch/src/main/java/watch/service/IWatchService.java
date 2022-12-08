package watch.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import watch.dto.IWatchDto;
import watch.model.Watch;

import java.util.Optional;

public interface IWatchService {
    Page<IWatchDto> searchWatch(String nameSearch, Pageable pageable);
    Optional<Watch> findById(int id);
}
