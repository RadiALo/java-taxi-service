package taxi.controller.car.driver;

import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String carId = req.getParameter("id");
        String driverId = req.getParameter("driver");
        if (carId != null) {
            Car car = carService.get(Long.valueOf(carId));
            List<Driver> drivers = car.getDrivers();
            Driver driverToDelete = driverService.get(Long.valueOf(driverId));
            drivers.remove(driverToDelete);
            car.setDrivers(drivers);
            carService.update(car);
            resp.sendRedirect(req.getContextPath() + "/cars/drivers?id=" + carId);
        }
    }
}
