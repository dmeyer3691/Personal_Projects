Structure of Code:
The structure of this code was mostly predefined by the rails framework. Inside the 
onlineGrocery2 directory are several other subdirectories, the most important being the app
directory which holds almost all of our team's written code. Inside here is an assets folder 
which contains subdirectories for all the javascript, css, and images used in our project.
The sytlesheets correspond to the different views available on our site with the overall view
being the application view. These views can be found inside the views directory inside the app 
directory. These contain the html.erb files which represent the different pages accessible 
on our site. The main view, application.html.erb contains a yeild statement in the body which
generates the other views inside so that our pages have a consistent layout. The app directory
also contains the models folder which holds information about objects we manipulate in the
controller and views. Likewise, the app folder holds the controller directory which contains
the controllers for all our classes and help do the actual work of the application. Another
important place in our project directory is the db folder which holds the files associated with
the database for our project. It contains the migration files used to generate the database
as well as the actual sqlite files and seed files. Equally important is the test folder which 
holds the tests for our entire application. Most tests were for the controller classes since these
are what we manipulated most. There is also a fixtures folder which contains information to use
in some of the tests. Two other interesting files are the routes.rb file which is in the config
folder. This defines the routing of our applications pages (ie navigation). The other interesting
file is the gemfile which contains the gems included in our application.

How to Execute:
I will assume you are using the same linux environment the class was required to download at the
beginning of the semester. To execute our project simply navigate to the onlineGrocery2 directory in a 
terminal window. Now since we have included some non-standard gems, the first thing you should do is
run 'bundle install' to download and install the gems required for execution. Next, simply type
'rails server' and wait for the server to boot up. Now open a browser and navigate to localhost:3000
which is our landing/home page for the application. From here you should be able to explore the app
in any way you see fit. All links should be able to take you anywhere you need to go. When you are
finished, simply type ctrl-C in the terminal to shut down the server. To run our tests, just type
'rake test' in the terminal and wait for the results. 

Member Contributions:
David Meyer- Created the sessions, users, admin classes which included the views, controllers, models. A main project was the user encryption as well as making the cart AJAXy including the +1, -1 buttons.

Ty Kuhn- Created the cart, orders, line_items clases which included views, controllers, models. A main project of his was adding detailed fields to the order system including timestamps and pickup flags.

Justin Dano- Worked on the cart, line_items, orders classes which included the views, controllers, models. Helped implement the function that ensures the system always has at least one administrator.

Sonny Li- Worked on the overall application layout including the storefront page with bootstrap. This included the application helper method. Helped implement the admin page which shows how many current orders there are.

Marques Mayoras- Worked on the cart, line_items, orders classes which included the views, controllers, models. Helped make the application helper function that hides the cart when empty.