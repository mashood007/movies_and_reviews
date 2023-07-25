
This is a ruby on rails application for summarizing movies data

Technologies:

* Ruby on rails
* Ruby
* Postgresql
* HTML
* Bootstrap
* Javascript/Jquery

How to run
* Checkout code
* Bundle install
* rails db:setup
* rails server

Model

* Movie
    - movies has many reviews
    - movies has many actors
    - movies belongs to director
    - Movies belongs to location
* User
    - User has many reviews
* Artist : used to store artists such as actors and directors
    - Parent class for Actor and Direct
* Actor : Which is mapped with artists table having type 'Actor'
    - has many movies through movie actors
* Director : Which is mapped with artists table having type 'Director'
    - Director has many movies
* Location
    - Has many movies
* MovieActor
    - Used to connect movies and actors

Jobs

* ImportMoviesJob
    - Used to import movies CSV file and insert data
* ImportReviewsJob
    - Used to import reviews CSV file and insert data

*screen shots

<img width="1719" alt="image" src="https://github.com/mashood007/movies_and_reviews/assets/36814340/6a79be4b-ee9e-439f-b362-f904c3013588">

<img width="1446" alt="image" src="https://github.com/mashood007/movies_and_reviews/assets/36814340/057a160a-0348-49ec-b633-49602c10c36b">
<img width="927" alt="image" src="https://github.com/mashood007/movies_and_reviews/assets/36814340/0c35784a-6eae-495c-aa9b-e3d820fd56d6">

