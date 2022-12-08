package watch.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import watch.repository.IWatchProducerRepository;
import watch.service.IWatchProducerService;

import java.util.List;

@Service
public class WatchProducer implements IWatchProducerService {
    @Autowired
    private IWatchProducerRepository iWatchProducerRepository;

    @Override
    public List<watch.model.WatchProducer> findAll() {
        return iWatchProducerRepository.findAll();
    }
}
