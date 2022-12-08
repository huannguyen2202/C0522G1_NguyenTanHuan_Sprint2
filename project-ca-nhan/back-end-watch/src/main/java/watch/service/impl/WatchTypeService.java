package watch.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import watch.model.WatchType;
import watch.repository.IWatchTypeRepository;
import watch.service.IWatchTypeService;

import java.util.List;

@Service
public class WatchTypeService implements IWatchTypeService {
    @Autowired
    private IWatchTypeRepository iWatchTypeRepository;

    @Override
    public List<WatchType> findAll() {
        return iWatchTypeRepository.findAll();
    }
}
