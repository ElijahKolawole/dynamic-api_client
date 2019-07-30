// To save as "ebookshop\WEB-INF\classes\QueryServlet.java".
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@WebServlet("/quote")   // Configure the request URL for this servlet (Tomcat 7/Servlet 3.0 upwards)
public class QuoteJourney extends HttpServlet {
// static String currURL = "/quote";
// static String newURL = "/about";
// public static String getCurrUrl(){
//    return currURL;
// }
// The doGet() runs once per HTTP GET request to this servlet.
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
   throws ServletException, IOException {
// Set the MIME type for the response message
      response.setContentType("text/html");
// Get a output writer to write the response message into the network socket
      PrintWriter out = response.getWriter();

      C:\\xampp\\tomcat\\webapps\\dynamic-api_client\\Raw.main(new String[0]);
// Print an HTML page as the output of the query
      out.println("<html>");
      out.println("<head>");
      out.println("<title> Quote-Journey</title>");
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
      out.println("<h1>--------------</h1>");
      out.println("</div>");
      out.println("<div class='content'>"); //page content starts here
      out.println("<div class='main' id='quote_main'>");
// out.println("<iframe id='quote_main' src='http://localhost:9999/dynamic-api_client/about' scrolling='no' frameborder='0' border='0' cellspacing='0' style='border-style: none; width:100%; ' >");
// out.println("<p>Your browser does not support iframes.</p>");
// out.println("</iframe>");
      out.println(" <form action='/dynamic-api_client/summary' method='post' id='quote_form'>");
      out.println(" <fieldset> ");
      out.println(" <legend><h3>Provide Relevant Information</h3></legend> ");
      out.println(" <h4>1. State</h4>");
      out.println(" <select name='state' id='state' onchange=' retainValue(); return false;'>");
      out.println(" <option value='Georgia'>Georgia</option>");
      out.println(" <option value='Texas'>Texas</option>");
      out.println(" <option value='New York'>New York</option>");
      out.println(" <option value='California'>Carlifornia</option>");
      out.println(" <option value='Florida'>Florida</option>");
      out.println("  <option value='null' selected>Select</option>");
      out.println(" </select>");
      out.println(" <h4>2. Category of Business</h4>");
      out.println(" <select name='cob' id='cob'>");
      out.println(" <option value='handy_person'>Handy Person</option>");
      out.println(" <option value='account'>Accounting</option>");
      out.println(" <option value=accup>Accupunture Services</option>");
      out.println(" <option value='advert'>Advertising</option>");
      out.println(" <option value='app_dev'>Application Development</option>");
      out.println(" <option value='null' selected>Select</option>");
      out.println(" </select>");
      out.println(" <h4>3. Product</h4>");
      out.println(" <select name='product' id='product'>");
      out.println(" <option value='GL'>General Liability</option>");
      out.println(" <option value='PL'>Professional Liability</option>");
      out.println(" <option value='BOP'>Business Owner Policy</option>");
      out.println("  <option value='null' selected>Select</option>");
      out.println(" </select><br><br>");
      out.println(" <button type='submit' form='quote_form' value='Submit'>Submit Details</button>");
      out.println(" </fieldset>");
      out.println("  </form>");
      out.println("</div>");
      out.println("</div>");
      out.println("<div id='footer' > &copy; copyright api_team 2019</div>");
      out.println("</body></html>");
      out.close();
   }
}