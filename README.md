# Application Title: A Description
Climb API. Store climb name, climb grade, numbers of tries, did send,
and belong to user. Users are store.

## Important Links

- [Deployed API](https://tukrong-climb-api.herokuapp.com/climbs)
- [Deployed Client](https://tukrong.github.io/tukrong_climb_tracker/)

Github Repo

- Api Repo
https://github.com/tukrong/tukrong_climb_api

- Front end Repo
https://github.com/tukrong/tukrong_climb_tracker

## Planning Story:

- Create my app.
- Create my database.
- Deploy my app.
- Scaffold my resource to reference it to user.
- Make sure everything is written correctly.
- Migrate my database.
- Make sure I have all my references.


## Technologies Used:

- Ruby
- Ruby on rails
- Heroku
- SQL

## Unsolved Problems
- Make my app more responsive

- I had a 500 error. I originally had my did_send as a boolean and changed it to string. I had to restart and drop all my data
<<<<<<< HEAD
because I was getting a unknown value pass into did_send. 

- I also had an error trying to update my climbs. I initially just wanted to be able to update a climb 
using the routes name and not id. I then had to add ID to my serializer and just used an ID to update a climb. I was missing
an ID reference in the back end. 


=======
because I was getting a unknown value pass into did_send.

- I also had an error trying to update my climbs. I initially just wanted to be able to update a climb
using the routes name and not id. I then had to add ID to my serializer and just used an ID to update a climb. I was missing
an ID reference in the back end.
>>>>>>> Add an images folder
