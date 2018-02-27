# README
CUISINE PURSUIT

Plan ahead for your next big trip with CUISINE PURSUIT, a web application built with Ruby-on-Rails, 
designed to crowdsource the best places to eat within a given city.

Bootstrap, Devise, Omniauth, Omniauth-facebook, Omniauth-twitter

- Sortable by Category (fancy, fast-food, etc), location (NYC, Boston, etc), food-type (seafood, steakhouse, etc)
- Follow/subscribe/add restaurant to trip

Future Ideas:
    User Reviews
    Comments
    (Improved social interaction)
    (?) Grab highest rated from Yelp API
    Country-based sorting

0. Bootstrap 
    - Create navbar
1. Establish CRUD capabilities for Restaurant
    - restaurant controller, routes, model
        - add image -> Paperclip or pull from FB?
        - add validations - DONT FORGET TO DO THIS
    - Planned inclusions:
        - include facebook feed or some other way to keep up with events
        - include yelp scores
        - include google maps location
2. Implement Category
    - Drop down for new/edit
3. Implement Location
    - Drop down for new/edit
4. Implement Food-Type
    - Drop down for new/edit
5. Implement Devise User with Omniauth
    - Add ability to save restaurant to a trip (list of related restaurants)
        - Create nested routes for Trips
        - Establish CRUB capabilities for Trips
    - Needs a User page
    - Planned inclusions:
        - Google sign-in
        - Trip dashboard with Facebook-style news feed for saved restaurants to keep up-to-date