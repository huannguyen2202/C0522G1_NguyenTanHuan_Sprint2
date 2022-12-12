package watch.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import watch.dto.IWatchDto;
import watch.model.Watch;
import watch.repository.IWatchRepository;
import watch.service.IWatchService;

import java.util.Optional;

@Service
public class WatchService implements IWatchService {
    @Autowired
    private IWatchRepository iWatchRepository;

    @Override
    public Page<IWatchDto> searchWatch(String nameSearch, Pageable pageable) {
        return iWatchRepository.searchWatch(nameSearch, pageable);
    }

    @Override
    public Optional<Watch> findById(Integer id) {
        return iWatchRepository.findById(id);
    }


}
