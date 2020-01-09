# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

/*
Rails Consulting
-App for booking meeting. Provides a portal for a consultant to schedule meetings. You can have clients come on to the site and schedule a session and pay for it. 

The client can see all their upcoming meetings and sessions and the admin(freelancer) can manage users, cancel meetings and other overall edits to the site



Uses mailers, uses stripe API implementation for payments, using a calender gem
Uses tailwind template by Andy Leverenz --> https://github.com/justalever/kickoff_tailwind
-automatically does a lot of setup work for us

Devise gem for authentication
redis to run sidekiq in the background and send out emails 

Thanks
Undraw for illustrations
Jlever for guide


To-Do
- Add drag and drop to add files in meeting-show
- Creating a date picker with time picker
- Add option to display all meetings when logged in as admin
- Refactor tailwind code for 1.0
-Integrate SendGrid
-Refactor UI
-Improve text on home page



Layout

Sign-up page *Screenshot*
- Lets the users sign-up
- Lets users sign-in

Dashboard *Screenshot*
First thing the users see when they sign in. Display all the meetings they have schedules
-*screenshot* also has a list view of all the meetings

Meeting Show *screentshot*
-Each meeting has a show page, which displays the start and end times for the meeting. We use the gem trix by basecamp to generate the text editor for adding details/comments to the meetings.

*screenshot updating comments in real time*
- We also use AJAX to update the comments in real time. When users submit a comment it is automatically displayed without having to refresh the page.


Schedule a new consulting session *screenshot*
- Form with meeting name, start time, end time, stripe payment options
- Also remembers the users last entered payment options 
- Submitting the form sends a confirmation email to the users *Mailer*




CODE
make sure you have redis installed
gem install foreman
bundle install
foreman start


Setup stripe payments
go to dashboard.stripe.com and create an account if you don't already have one.

Click on the developer option and get your secret key.Link to article

open your credentials file. Link to how to open credfile in rails--> https://www.viget.com/articles/storing-secret-credentials-in-rails-5-2-and-up/


EDITOR="<code> --wait" bin/rails credentials:edit


paste the secret key and publishable key as
stripe_publishable_key: fff
stripe_secret_key: ggg