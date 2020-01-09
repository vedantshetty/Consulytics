

# Consulytics

App for freelancers and consultants streamline consultation sessions. Consulytics provides a portal for your clients to schedule and pay for consultation sessions

## Table of Contents
- [Features](#features)
- [Layout](#layout)
- [Setup/Installation](#setup)
- [Gems](#gems)
- [To-Do](#to-do)
- [Thanks](#thanks)
- [License](#license)


## Features

 - See all your upcoming sessions in a simple calender or list view
 - Clients can log-in to keep track of all their upcomming consultations
 - Add comments and meeting notes to keep track of the important stuff
 - Stripe integration allows clients to pay for the meeting directly inside the app itself
 - Send a confirmation and reminder emails to the client just before the meeting

## Layout
### Sign-up Page

![Login/Signup Page](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/Login_SignUp.png)
- Lets the users Sign-Up/ Sign-In
- Users need to be logged in to be able to schedule meetings

### Dashboard
![Regular Dashboard](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/Regular_Dashboard.png)

 - The calender dashboard is the first thing the users sees when they log-in
 
 #### Admin Dashboard
 - The calender only shows appointments relevant to the user but the admin can see all the meetings
![Admin Dashboard](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/Admin_dashboard.png)


#### List View
- By selecting the tab at the top you can also choose to view the meetings in a list view
![Meeting In List View](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/Meeting_List_View.png)

### See an Individual Meeting 
- Each meeting has a show page which displays the start times and end times for the meeting. 
- You can also write some of your thoughts and notes for the meeting here. We use the trix gem to generate a text editor for adding details to the meetings
- The admin also has the ability to cancel the meeting session through this page
![Meeting In List View](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/Meeting_List_View.png)

- The meeting show page uses AJAX to update the comments in real time. When users submit a comment it is automatically displayed without having to refresh the page.
![Dynamic Meeting Update](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/AJAX%20Comments.gif)



### Scheduling A New Consultation Session

![New Consulation Form](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/New_Session.png)
- Client's can schedule a new meeting right from within the app
- Creating a new meeting also sends an email to the client about the meeting they just scheduled at their registered email ID
![New Consulation Email](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/New_Session_Mail.png)



### Client/User list
- In addition to the above features the admin can view all his clients along with the upcoming sessions with them on a single page
- The admin can also delete/fire a particular client thus cancelling all sessions with them
![Users List](https://github.com/vedantshetty/Consulytics/blob/master/Readme-Assets/User_List.png)

## Setup

1. cd to the directory you want to save the code
2. run `git clone git@github.com:vedantshetty/Consulytics.git`
3. cd to the project directory
4. Make sure you have redis install
  - run `redis-server` in the terminal
  - If you don't have redis install then do so by using the [guide](http://tutorials.jumpstartlab.com/topics/performance/installing_redis.html)
5. run `gem install foreman`
  - Make sure to not install foreman from the gem file
6. `bundle install`
7. Setup Stripe Payments
  - Get your public and secret key from stripe( [link to keys](https://dashboard.stripe.com/test/apikeys))
  - Open the credentials file by typing

| Value In Code | Text Editor  |
|---------------|--------------|
| EDITOR='subl --wait' bin/rails credentials:edit        | Sublime Text |
| EDITOR='code --wait' bin/rails credentials:edit          | VSCode       |
| EDITOR='gedit --wait' bin/rails credentials:edit         | Gedit        |

8 Paste the following in your credentials file
  - stripe_publishable_key: <YOUR_KEY_HERE>
  - stripe_secret_key: < YOUR_KEY_HERE>

9. `foreman start`

## Gems

 1. [Simple Calender](https://github.com/excid3/simple_calendar)
 2. [Stripe API](https://github.com/stripe/stripe-ruby)
 3. TO-DO: [SendGrid](https://sendgrid.com/docs/for-developers/sending-email/rubyonrails/)
 4. [Tailwind CSS](https://tailwindcss.com/)
 5. [Tailwind Template](https://github.com/justalever/kickoff_tailwind) by [Andy Leverenz](https://www.linkedin.com/in/aleverenz/)
 6. [Redis](https://github.com/redis/redis-rb)
 7. [Sidekiq](https://github.com/mperham/sidekiq)
 8. [Trix](https://github.com/basecamp/trix) by Basecamp
 
 ## To-Do
 - Allow 'drag-dropping' files to meeting notes
- Use a more intuitive date-time picker
- Refactor CSS for tailwindCSS 1.0
-Integrate SendGrid
-Refactor UI
-Improve text on home page


## Thanks

 1. [Undraw](https://undraw.co/) for illustrations
 2. [Jlever](https://github.com/justalever) for guide
