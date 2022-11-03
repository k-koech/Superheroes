# Super Heroes
Ruby version: 2.7.4

Rails version: 6.1.7

Deployed link: <a href='https://superheroes-challenge-api.herokuapp.com/'>Here</a>

## General Information

This is a rails API consisting of heroes, hero_powers(join table) and powers.

heroes column names: name(string), super_name(string)

powers column names: name(string), description(string)

hero_powers column names: strength(Average, Weak or Strong), hero_id(integer), power_id(integer)

> N/B: The strength column is case sensitive

### Endpoints

Valid endpoints for the API are:
GET /heroes

GET /heroes/:id

GET /powers

GET /powers/:id

PATCH /powers/:id

POST /hero_powers


## Configuration
Clone or fork and clone this repository to your local environment (machine) and then run:
```
bundle install
rails db:migrate db:seed
```
This will install the dependencies required in the Gemfile then carry out the migrations defined in `db/migrate` and then seed some data from `db/seeds.rb` file

Then run:
```
rails s
```
... to run the server and consume the API locally

## Database information
The database being used locally is `sqlite3` whereas in production `postgresql` is being used.

In the database there consists of the following relationships based on the models:
### Hero
has many hero_powers (One to many relationship)
has many powers, through hero_powers (Many to many relationship)

### Power
has many hero_powers (One to many relationship)
has many heroes(heros), through hero_powers (Many to many relationship)

### HeroPower
belongs to hero (One to many relationship)
belongs to power (One to many relationship)
