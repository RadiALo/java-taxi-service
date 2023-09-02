package taxi.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Manufacturer;
import taxi.service.ManufacturerService;

public class CreateManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        if (name != null && country != null
                && !name.equals("") && !country.equals("")) {
            Manufacturer manufacturer = new Manufacturer(name, country);
            manufacturerService.create(manufacturer);
            resp.sendRedirect(req.getContextPath() + "/manufacturers");
        } else {
            req.setAttribute("errorMsg", "Invalid data!");
            req.getRequestDispatcher("/WEB-INF/views/manufacturers.jsp").forward(req, resp);
        }
    }
}
