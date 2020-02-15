package lab2;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class CarTag extends SimpleTagSupport {

    private Car car;


    public void doTag() throws IOException {
        car = (Car) getJspContext().getAttribute("car", PageContext.SESSION_SCOPE);
        JspWriter out = getJspContext().getOut();
        out.println("<table><tr><th>Information about your car</th></tr>");
        out.println("<tr><td><h2> "+ car.getMark() + "</h2></td></tr>");
        out.println("<tr><td><h2> "+ car.getColor() + "</h2></td></tr>");
        for (String characteristic : car.getCharacteristics()
        ) {
            out.println("<tr><td><h2> "+ characteristic + "</h2></td></tr>");
        }

        if (car.getAdditionalInfo() != null) {
            out.println("<tr><td><h2> "+ car.getAdditionalInfo() + "</h2></td></tr></table>");
        }
    }
}
