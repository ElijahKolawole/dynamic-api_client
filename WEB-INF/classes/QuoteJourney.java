// To save as "ebookshop\WEB-INF\classes\QueryServlet.java".
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/quote")   // Configure the request URL for this servlet (Tomcat 7/Servlet 3.0 upwards)
public class QuoteJourney extends HttpServlet {
   static String currURL = "/quote";
   static String newURL = "/about";

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

   // try (
   //    // Step 1: Allocate a database 'Connection' object
   //    Connection conn = DriverManager.getConnection(
   //          "jdbc:mysql://localhost:3306/ebookshop?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
   //          "myuser", "datame1");   // For MySQL
   //          // The format is: "jdbc:mysql://hostname:port/databaseName", "username", "password"

   //    // Step 2: Allocate a 'Statement' object in the Connection
   //    Statement stmt = conn.createStatement();
   // ) {
   //    // Step 3: Execute a SQL SELECT query
   //    String sqlStr = "select * from books where author = "
   //          + "'" + request.getParameter("author") + "'"   // Single-quote SQL string
   //          + " and qty > 0 order by price desc";

   //    out.println("<h3>Thank you for your query.</h3>");
   //    out.println("<p>Your SQL statement is: " + sqlStr + "</p>"); // Echo for debugging
   //    ResultSet rset = stmt.executeQuery(sqlStr);  // Send the query to the server

   //    // Step 4: Process the query result set
   //    int count = 0;
   //    while(rset.next()) {
   //       // Print a paragraph <p>...</p> for each record
   //       out.println("<p>" + rset.getString("author")
   //             + ", " + rset.getString("title")
   //             + ", $" + rset.getDouble("price") + "</p>");
   //       count++;
   //    }
   //    out.println("<p>==== " + count + " records found =====</p>");
   // } catch(Exception ex) {
   //    out.println("<p>Error: " + ex.getMessage() + "</p>");
   //    out.println("<p>Check Tomcat console for details.</p>");
   //    ex.printStackTrace();
   // }  // Step 5: Close conn and stmt - Done automatically by try-with-resources (JDK 7)
                     out.println("<div class='header_bgd'>");
                        out.println("<h1>--------------</h1>");
                     out.println("</div>");
                     out.println("<div class='content'>");
                        out.println("<div class='main' id='quote_main'>");

                        out.println("<iframe id='quote_main' src='http://localhost:9999/dynamic-api_client/about' scrolling='no' frameborder='0' border='0' cellspacing='0' style='border-style: none; width:100%; ' >");

                        out.println("<p>Your browser does not support iframes.</p>");
                        out.println("</iframe>");

                        out.println("</div>");
                        out.println("</div>");

                        out.println("<div id='footer' > &copy; copyright api_team 2019</div>");

                        out.println("</body></html>");
                        out.close();
                     }
                  }