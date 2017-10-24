README

## Links

- Trail Tracker Site: https://mmorgan412.github.io/mels-full-stack-project/
- Front End Repo: https://github.com/mmorgan412/mels-full-stack-project
- Trail Tracker Heroku: https://mels-fullstack-project.herokuapp.com/

## Trail Tracker

- This app allows you to keep track of trails you've skiied at different mountains.
    Simply sign up and log in to start tracking.  You can add the name of your trail,
    the mountain you were skiing, the difficulty of the trail as well as how you felt about it.
    This can help you remember how many trails you've skiied or trigger your memory on
    a trail you loved and can't wait to ski again, or the not-so-great trails you want to
    avoid forever.  Enjoy!

## Technologies Used

  - Javascript, CSS and HTML were used for the client part of this application.
    A backend API, using Ruby on Rails, was used for interatcting with a database.
    Github and Heroku host the site.

### User Actions

| Verb   | URI Pattern            | Controller#Action    |
|--------|------------------------|----------------------|
| POST   | `/sign-up`             |    `users#signup`    |
| POST   | `/sign-in `            |  `users#signin`      |
| PATCH  | `/change-password/:id `|  `users#changepw`    |
| DELETE | `/sign/out/:id `       |   `users#signout`    |


### Trail Actions

| Verb   | URI Pattern         | Controller#Action    |
|--------|---------------------|----------------------|
| GET    | `/trails`           |    `trails#index`    |
| GET    | `/trails/id `       |  `trails #show`      |
| PATCH  | `/trails/id `       |  `trails#update`     |
| DELETE | `/trails/id `       |   `trails#destroy`   |
| POST   | `/trails`           |   `trails#create`    |


## Unsolved Problems
  Would like to add more functionality to query the database by mountain or difficulty.
  I would like to work on my design / styling.  I would also split my mountains
  out into a separate table.  I'd like to make my form fields for adding and editing buttons into a modal. 

## Development Process
  After I chose to build a trail tracker I started thinking about my layout and user stories.
  I wanted the user to be able to add trails and retrieve them as well as edit and delete their trails.
  I started with my sign in functionality.  I worked on getting a nav bar and modals to work for
  the sign in display.  I made sure my API worked correctly for sign up / log in / log out and change password.
  From here I moved onto my trails.  I set up the client first by displaying form fields.  I created
  my trails table in my database and then ran through curl scripts for every action to be sure my API
  and database were working correctly.  I attempted using handlebars on the front end to get my trails to display.
  I had some trouble getting my trails to update, add or edit appropriately but solved the problem by triggering
  the get trails button.  I decided last minute to try to add some search functionality and was able to add
  a search based on rating by using a GET call and a query to pull back the correct data.  If I had more time
  I would add more search functionality.


 ## ERD https://i.imgur.com/fJ18RG6.jpg
