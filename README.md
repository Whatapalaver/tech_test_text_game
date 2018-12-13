Ruby Project Starter Template with Sinatra
====

This is a boilerplate template for a very simple Ruby web app project. It includes rspec, simplecov and a rubocop linter from Makers. [Pry](https://github.com/pry/pry) installed for debugging.

It also has sinatra installed (and shotgun for automatic reloading) and the basics for an MVC structure.
Model = lib
View = Views
Controller = app.rb

I've created a dummy 'starter-code' template so that all the test files can be linked up. Just change the names or delete and start from scratch.

I've set up the config.ru files and Procfile so that it should deploy successfully to Heroku.

To Use:
---

- Clone or fork this project `git clone https://github.com/Whatapalaver/boilerplate_templates.git`
- Change into the directory `cd Ruby/ruby_rspec`
- You may want to copy files to your own project folder
- Install dependencies `bundle install`
- You should also create a .gitignore file to prevent all the coverage files being sent to github: `echo "coverage" >> .gitignore`  
- to run the server `rackup config.ru`

To test:

- This command will run both the rspec tests and simplecov `bundle exec rspec`
- To view the coverage detail as a webpage run `open coverage/index.html`
