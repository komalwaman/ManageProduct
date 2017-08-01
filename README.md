# README
A simple application where you can add product, edit existing one and can manage status. No login needed

* Ruby version - 2.4.0

get the latest code on machine and run bundle install.

* Database creation -
Mysql database is used on backend. Specify the username and password in config/database.yml
rake db:create ---This will create the DB
rake db:setup  ---This will make setup easier

* Database initialization
make sure everything is upto date by checking migrations.
rake db:migrate ---This will run the migration if you have missed.

* Start server with command
rails s

you can access the application on browser with url http://localhost:3000/

Change the port no if you have specified different port to run application.
