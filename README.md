University API

This project is a web application for searching universities by country using an API.

Requirements:
- Ruby (version 3.0 or higher)
- Rails (version 7.0 or higher)

Installation:

1. Clone the repository:
   git clone git@github.com:Byak-ko/UniversityAPI.git
   cd UniversityAPI

2. Install dependencies:
   bundle install

3. Set up the database:
   Run the following commands to create the database and run migrations:
   rails db:create
   rails db:migrate

Running the Application:

1. Start the server:
   rails server

2. Open your browser and go to:
   http://localhost:3000/universities

Usage:
 Search for universities:
 http://localhost:3000/universities/search
   - On the search page, you can enter the country, specifically "Ukraine," and click the "Search" button.
   - A list of universities matching the query will appear.
