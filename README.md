Multi-path text story - a tech test using Ruby and Sinatra
====

Challenge Instructions:  
_Please write a web application which enables the user to write "multi-path stories." A multi-path story is composed of sentences. After each sentence, there are up to four possible next sentences, and after each of those, another four possible next sentences, and so on._

_Here's a [short screencast](http://oneis-recruitment.s3.amazonaws.com/2014/stories-web-app.mp4) which illustrates the application._

_Take whatever shortcuts you need to make it possible to write the application in a reasonable amount of time, except for code quality. Don't bother with persistence, or making it look nice, but make sure you copy the user interface in the screencast._

___

To Use:
---

- Clone or fork this project `git clone https://github.com/Whatapalaver/multi_path_text_game`
- Change into the directory `cd multi_path_text_game`
- You may want to copy files to your own project folder
- Install dependencies `bundle install`
- You should also create a .gitignore file to prevent all the coverage files being sent to github: `echo "coverage" >> .gitignore`  
- to run the server `rackup config.ru`

To test:
---

- This command will run both the rspec tests and simplecov `bundle exec rspec`
- To view the coverage detail as a webpage run `open coverage/index.html`
