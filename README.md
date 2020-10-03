Drivers App Readme page

* Ruby version - '2.6.1'

* Configuration - All cars/races should be viewable to any user(driver). They can also create as many cars or races, with or without an existing car, as they would like. however they will only be able to update or delete a race that they created. 

* Database creation - The database tables were made with the Active Record,
each tables connects with the belongs_to, has_many, and has_many through: methods. 

* Database initialization - You may need to run Rails db:migrate to get started.

* Services (job queues, cache servers, search engines, etc.)
I have implemented Omniauth using a Google account sign in. All the views of the application should be applicable to any browser.

* Deployment instructions - Involves running bundle to access all the necessary Gems used in the app. As well as running Rails server or Rails s for short. If you have any problems staring the server you may have to install Yarn for Ubuntu on Windows on the yarn install website, and follow the instructions carefully. Each line they require to be run in the terminal is crucial.