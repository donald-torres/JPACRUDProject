# JPACRUDProject


### Overview

 This web application is the begining of a database designed for movie lovers where they can view, add, update, and remove movies.  The users are given an initial top five list of my favorite movies.  They can view all movies and their information if desired or search by their ID numbers.  As it is an initial web application the information for each movie is the title, description, release year, runtime, and optional poster for each moive.  With further development of this application users will be able to share and like movies and the main webpage will display the overall top five from every users combined score.  


### Technologies / Techniques Used

 - MySQL/Workspace
 - MAMP
 - Gradle
 - JDBC
 - Java
 - Spring Boot
 - JPA
 - HTML/JSP
 - Bootstrap


### Lessons Learned

   Pros- 

 - Better understanding of MySQLWorkbench due to multiple attempts of adding and removing during the test phase of coding.

 - More developed comfort level with full-stack developing through test a little code a little programming and some research.


   Cons- Biggest obsacles during programming-

 - Reading and understanding stack traces from errors in and between web pages had me doing research and trail and error on coding.  Some stack traces are a bit vauge and narrowing down something simple like a name in an input tag that varried just a bit.  My home page worked perectly as did my show all page when it came to displaying information on the movies.  However my new/update movie page would omit lines due to naming conventions not of the variables but because of the input tag name.  That was the final thing keeping my application from working at 100%.

 - Trying to reset my auto increment on MySQLWorkbench as it uses a .sql of its own type took some research because during testing I made some 30 new movies and deleted them so my next movie would always be a jump from my initially entered ID coloumns. I found out that two lines of code are all thats needed to reset it for sanitys sake.

	   SELECT MAX('insert_pk_column_name') FROM 'insert_table_name';
	   ALTER TABLE 'insert_table_name' AUTO_INCREMENT = 'insert_result_of_last_query';