package watch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import watch.dto.IWatchDto;
import watch.jwt.JwtTokenUtil;
import watch.model.Watch;
import watch.model.WatchProducer;
import watch.model.WatchType;
import watch.payload.request.LoginRequest;
import watch.payload.request.LoginResponse;
import watch.service.IWatchProducerService;
import watch.service.IWatchService;
import watch.service.IWatchTypeService;
import watch.service.decentralization.impl.MyUserDetails;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/watch")
@CrossOrigin("*")
public class WatchController {
    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private IWatchService iWatchService;

    @Autowired
    private IWatchTypeService iWatchTypeService;

    @Autowired
    private IWatchProducerService iWatchProducerService;

//    @GetMapping("/list")
//    public ResponseEntity<Page<IWatchDto>> getAllProductPaging(
//            @PageableDefault(value = 5) Pageable pageable,
//            @RequestParam(value = "nameSearch", defaultValue = "", required = false) String nameSearch) {
//        Page<IWatchDto> watchDtos = iWatchService.searchWatch(nameSearch, pageable);
//        return new ResponseEntity<>(watchDtos, HttpStatus.OK);
//    }

    @GetMapping("/list")
    public ResponseEntity<Page<IWatchDto>> getAllProduct(@RequestParam(value = "nameSearch", defaultValue = "") String nameSearch,
                                                         @PageableDefault(value = 8) Pageable pageable) {
        Page<IWatchDto> watchPage = iWatchService.searchWatch(nameSearch, pageable);
        if (watchPage.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(watchPage, HttpStatus.OK);
    }

    @GetMapping("/type-list")
    public ResponseEntity<List<WatchType>> getAllWatchType() {
        List<WatchType> watchTypes = iWatchTypeService.findAll();
        if (watchTypes.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(watchTypes, HttpStatus.OK);
    }

    @GetMapping("/producer-list")
    public ResponseEntity<List<WatchProducer>> getAllWatchProducer() {
        List<WatchProducer> watchProducers = iWatchProducerService.findAll();
        if (watchProducers.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(watchProducers, HttpStatus.OK);
    }
    @GetMapping("/detail/{id}")
    public ResponseEntity<Watch> getInfo(@PathVariable int id) {
        Optional<Watch> watch = iWatchService.findById(id);
        if (watch.isPresent()) {
            return new ResponseEntity<>(watch.get(), HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtTokenUtil.generateJwtToken(loginRequest.getUsername());
        MyUserDetails myUserDetails = (MyUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<String> roles = myUserDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());
        return ResponseEntity.ok(
                new LoginResponse(
                        jwt,
                        myUserDetails.getUsername(),
                        roles));
    }
}
