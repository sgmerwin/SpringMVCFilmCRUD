## Spring MVC Film C.R.U.D. Project

### Overview

* This is a Film Query Project which utilizes the C.R.U.D. concept.<br>
  C.R.U.D. = Create, Read, Update, and Delete.
  This project allows the user to do all the above to the films within the existing database.
  A user will be able to create new films by entering in information in the required blocks.
  The film will be available in the database to read, update, and delete.
  The user will also be able to read any film in the database, with standard films being
  from ID's 1-1000. Any film created by the user will have an ID higher than 1000.

  The follow image provides a basic overview of the project.

<img src="https://github.com/sgmerwin/SpringMVCFilmCRUD/blob/master/readme_1_11_20.jpg" width="500" height="500">

#### Topics/Technologies Used

* Java
* SQL
* C.R.U.D.
* Spring Tool Suite
* JDBC
* JSP's

#### Lessons Learned

* The main lesson learned from this project was the setup and understanding the flow
  of a Spring Framework project and how to retrieve data from an SQL database to display to a webpage.

* The Spring Framework first references a web.xml file. In the web.xml there is a url-pattern that provides a reference to an @RequestMapping in a Java controller file. The Java controller file uses an @Autowired reference to generate a DAO object.
Based on the @RequestMapping reference, the Java controller file runs a method from the DAO object which generates an SQL statement and displays the data using the JSP file referenced in the controller method.

* Only the DAO object methods generate SQL statements.

* The Java Controller file is the link between the DAO object's methods to generate SQL statements and displaying the data using the correct JSP file.

* The Java server Pages Standard Library (JSTL) provides a collection of JSP tags to provide support for tasks such as iterations and conditions. The JSTL library was essential to the project and used to make decisions based on the values of a film's attributes and used to iterate over lists of actors.

#### Conclusion

* The Spring Framework proved to be a very intuitive design to use. The JSTL library made it easy to handle decisions from the JSP file. For a first run with the Spring Framework, the project went very well.
