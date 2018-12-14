A Routing Challenge using Ruby and Sinatra
====

Challenge Instructions: 

_Instructions were provided that required me to build an application that enabled the user to write their own option based story. I was sent a screencast demonstrating the game flow and asked to replicate the minimal styling._

___

Approach to Design and Implementation
---

I spent sometime considering the challenge and how I should handle the data flow in order that each page would store its 4 potential story options so they could be both selected and reviewed via the "Back to the start" option.

I created 3 classes from the outset: 

- A Story that would initialise when the root index was opened and would hold details of pages and page options.
- A Page that held details of all 4 potential options. The previously selected Option becomes the current page chapter to be presented in the center of the page grid.
- An Option that represents the story continuation and is the text field submitted by the user

Initially I planned to create a new Option object each time the submit button was pressed and create a new Page object each time the Option link was selected. However, as you are unable to submit a POST request from an <a> link, I decided that I should create a new Page with every creation of a new Object. So these two taks are embedded in the `post '/pages/:pageid/option_?'` routes. This approach means that there are Pages that correspond to every Option regardless of whether they are ever clicked - it feels like a Schrodinger's cat solution where every potential outcome is already mapped.

Areas requiring further development
---

App.rb currently defines POST handlers for each of the 4 potential options. This results in significant repetition of code. I suspect I should handle this in a single POST handler that takes a further parameter to define which Option is being created.

Now that my Option initialisation also initialises a blank Page I have created some circularity where both the Page and the Option need to know about each other. I have handled that in App.rb POST route where I push details of the Option into the Page object and in turn push these to the Story object. This doesn't feel like a good implementation and is also probably too much logic to be contained in the controller. 

Fundamentals covered in this challenge
---

- Dynamic routing with the use of parameters to define route
- Persistence of local data between calls to the server
- Nested routes with for example, story options belonging to pages
- Object oriented programming principles with separation of concerns
- MVC structure

To Use
---

- Clone or fork this project `git clone https://github.com/Whatapalaver/multi_path_text_game`
- Change into the directory `cd multi_path_text_game`
- You may want to copy files to your own project folder
- Install dependencies `bundle install`  
- to run the server `rackup config.ru`
- open `http://localhost:9292` in your browser to start writing your story

To test
---

I didn't use a TDD approach for this exercise but do have the testing framework setup in order to allow retrospective testing to be written.
<!-- - This command will run both the rspec tests and simplecov `bundle exec rspec`
- To view the coverage detail as a webpage run `open coverage/index.html` -->
