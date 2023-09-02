package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers-add.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = (String) req.getParameter("name");
        String licenseNumber = (String) req.getParameter("licenseNumber");
        String login = (String) req.getParameter("login");
        String password = (String) req.getParameter("password");
        if (name != null && licenseNumber != null
                && !name.equals("") && !licenseNumber.equals("")) {
            Driver driver = new Driver(name, licenseNumber, password, login);
            driverService.create(driver);
            resp.sendRedirect(req.getContextPath() + "/drivers");
        } else {
            req.setAttribute("errorMsg", "Invalid data!");
            req.getRequestDispatcher("/WEB-INF/views/manufacturers.jsp").forward(req, resp);
        }
    }
}
