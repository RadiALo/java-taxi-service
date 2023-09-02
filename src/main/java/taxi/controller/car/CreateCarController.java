package taxi.controller.car;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Manufacturer;
import taxi.service.CarService;
import taxi.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerId = req.getParameter("manufacturerId");
        if (model != null && manufacturerId != null
                && !model.equals("") && !manufacturerId.equals("")) {
            Manufacturer manufacturer
                    = manufacturerService.get(Long.valueOf(manufacturerId));
            Car car = new Car(model, manufacturer, new ArrayList<>());
            carService.create(car);
            resp.sendRedirect(req.getContextPath() + "/cars");
        } else {
            req.setAttribute("errorMsg", "Invalid data!");
            req.getRequestDispatcher("/WEB-INF/views/cars.jsp").forward(req, resp);
        }
    }
}
