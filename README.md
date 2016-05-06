# Psychic Quest

This is based on a goofy idea from a RailsConf 2016 workshop. Get with another person. Each of you independently finds a random Wikipedia page. Write a Rails back end on your own based on that topic. No views, just controllers, models, routes, migrations, seeds. After 45 minutes, shove your code up to GitHub and give the other person access to the repo. You each pull down the other's repo and add a UI to their back end. After another 45 minutes, demo the front end you put on their app.

Thanks to [Sarah](https://github.com/cheshire137) for the front end and styling!

![Screenshot](https://raw.githubusercontent.com/summasmiff/psychic-quest/master/screenshot.png)

![Screenshot 2](https://raw.githubusercontent.com/summasmiff/psychic-quest/master/screenshot2.png)

## How to Run Locally

    bundle
    bin/rake db:create db:migrate db:seed
    bin/rails s
