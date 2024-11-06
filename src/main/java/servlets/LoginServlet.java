package servlets;

/*import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;*/

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	
	/*private MongoClient mongoClient;
    private MongoDatabase database;

    @Override
    public void init() throws ServletException {
        // Connect to MongoDB
        MongoClientURI uri = new MongoClientURI("mongodb://localhost:27017"); // Change URI as needed
        mongoClient = new MongoClient(uri);
        database = mongoClient.getDatabase("yourDatabaseName"); // Replace with your database name
    }*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        //check username and password against a database
        if ("admin".equals(username) && "password".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", username);
            request.setAttribute("loginSuccess", true);
            response.sendRedirect("jsp/homePageSysAdmin.jsp");
        } else if ("staff".equals(username) && "password".equals(password)) {
        	HttpSession session = request.getSession();
            session.setAttribute("staff", username);
            response.sendRedirect("jsp/homePageStaff.jsp");
        } else {
        	/*String loginError = "Incorrect username or password";
        	request.setAttribute("loginError", loginError);
            RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/homePageGuest.jsp");
            dispatcher.forward(request, response);*/
            
            String loginError = "Incorrect username or password";
            request.setAttribute("loginError", loginError);

            // Redirect to the login page, passing the error message
            response.sendRedirect(request.getContextPath() + "/jsp/homePageGuest.jsp?error=" + URLEncoder.encode(loginError, "UTF-8"));
        }
	}
}