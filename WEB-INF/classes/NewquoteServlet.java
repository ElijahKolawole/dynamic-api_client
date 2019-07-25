// To save as "ebookshop\WEB-INF\classes\QueryServlet.java".
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@WebServlet("/newquote")   // Configure the request URL for this servlet (Tomcat 7/Servlet 3.0 upwards)
public class NewquoteServlet extends HttpServlet {
// The doGet() runs once per HTTP GET request to this servlet.
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
   throws ServletException, IOException {
// Set the MIME type for the response message
      response.setContentType("text/html");
// Get a output writer to write the response message into the network socket
      PrintWriter out = response.getWriter();
// Print an HTML page as the output of the query
      out.println("<html>");
      out.println("<head>");
      out.println("<title> Quote-Journey : NewQuote</title>");
      out.println("<c:set var='ctx' value='${pageContext.request.contextPath}' />");
      out.println("<meta charset='UTF_8'>");
      out.println("<meta name='description' content='Dynamic Quote API Demo'>");
      out.println("<meta name='keywords' content='API, DYNAMIC API, INSURANCE'>");
      out.println("<meta name='author' content='Adefemi K, API Team'>");
      out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
      out.println("<link rel='stylesheet' type='text/css' href='/dynamic-api_client/style/style.css'>");
      out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
      out.println("<script src='/dynamic-api_client/script/script.js'></script>");
      out.println("");
      out.println("</head>");
      out.println("<body>");
      out.println("<div class='header_bgd'>");
// out.println("<h1>--------------</h1>");
      out.println("</div>");
      out.println("<div class='content'>");
      out.println("<div class='main'>");
      out.println("<h2>Your Quote </h2>");
      out.println("<form action='/dynamic-api_client/quote' method='get' id='form'>");
      out.println("<fieldset>");
      out.println("<legend><h3><i>--Quote--</i></h3></legend>");
// <h4>1. State</h4>
// <select name="state" id="state" onchange=' retainValue(); return false;'>
//    <option value="Georgia">Georgia</option>
//    <option value="Texas">Texas</option>
//    <option value="New York">New York</option>
//    <option value="California">Carlifornia</option>
//    <option value="Florida">Florida</option>
//    <option value="null" selected>Select</option>
// </select>
// <h4>2. Category of Business</h4>
// <select name="cob" id="cob">
//    <option value="handy_person">Handy Person</option>
//    <option value="account">Accounting</option>
//    <option value=accup>Accupunture Services</option>
//    <option value="advert">Advertising</option>
//    <option value="app_dev">Application Development</option>
//    <option value="null" selected>Select</option>
// </select>
// <h4>3. Product</h4>
// <select name="product" id="product">
//    <option value="GL">General Liability</option>
//    <option value="PL">Professional Liability</option>
//    <option value="BOP">Business Owner Policy</option>
//    <option value="null" selected>Select</option>
// </select><br><br>
      out.println("<button type='submit' value='Submit' onclick='goBack();return false;' id='prevBtn'>Previous</button>");
      out.println("<button type='submit' value='Submit' onclick='goForward();return false;' id='nextBtn'>Continue</button>");
      out.println("</fieldset>");
      out.println("</form>");
      out.println("</div>");
      out.println("</div>");
      out.println("</body></html>");
      out.close();
   }
}