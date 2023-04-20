package taxi.service;

import java.util.List;
import java.util.Optional;
import taxi.model.Driver;

public interface DriverService {
    Driver create(Driver driver);

    Driver get(Long id);

    List<Driver> getAll();

    Driver update(Driver driver);
    Optional<Driver> findByLogin(String login);
    boolean delete(Long id);
}
