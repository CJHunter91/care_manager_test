Care Manager App

Author: Christopher Hunter

This web application allows the user to manage a list of rooms and the residents who occupy them. It also uses CRUD operations to allow the user to add/edit/remove rooms and residents. Semantic HTML was used to help with user accessibility and SEO.

The app follows a RESTful design strategy which uses an embedded Ruby front-end. The routes can easily be changed to render JSON and serve as an API allowing the use of a different front-end language or framework.

Main challenges while creating this app were checking if rooms had reached capacity and stopping the user deleting rooms containing residents.

* Ruby version - 2.4.1p111
* MySQL version - 5.7.19 
* mysql2 version (0.4.9)

Use homebrew or equivalent to install mysql

`brew install mysql`

Install homebrew services

`brew tap homebrew/services`

Start mysql service

`brew services start mysql`

Use `bundle install` to install all dependencies

Setup database `rake db:create db:migrate db:seed`

Run server using `rails s`

Run test suite using `rake test`

Use browser to visit [http://localhost:3000/](http://localhost:3000/)