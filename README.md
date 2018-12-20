# Shortly
A url shortner

### Prerequisites

What things you need to install the software before you can use it

Ruby 2.3.1
Rails 5.1.4
Postgresql database and dont forget to change the database username in database.yml 

### Installing
cd short_url

bundle install

rails db:create

rails db:migrate

rails db:seed (Added some seed data)

rails s 

For API Implimentation i have used Grape Gem

Now you can see the app running here [http://localhost:3000/](http://localhost:3000/) 

API PATH :  http://localhost:3000/api/v1/links.json ( For Get, Post, Delete )

Just need to post base_url through api short url will show up in history link ( UI ), and then we can clink on it will redirect us to the actual url.


Developed By: Pradeep