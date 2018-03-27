# Home Base

## Objective
In my current job we use several complicated web and server structure links to get to frequently used tools and documents. I wanted to build an application that would make this process easier and more centralized to save time and improve the quality of our work.

## Steps Taken
Due to the lack of server support in the environment where this application is deployed, I wrote the entire thing to run in a browser with no need for a back end. There were several challenges I had to overcome in order to complete this tool. 
  
First, I had to build the JavaScript functionality to allow me open links in a new tab when a button was clicked because this functionality is not inherently available in HTML button elements like it would be in a link element. 
  
Next, I implemented the search function. I decided for ease of use I wanted a continuous search, not one where the user had to click a “search” button. By adding a value field to the buttons I was able to build more JavaScript that could convert the user input in the search field to caps and compare it to a caps converted version of the button values. This eliminated search errors due to casing, and enabled me to find specific buttons on the page. I expanded my JavaScript functionality to change the display property of the buttons that did not match the search criteria, so for the user it cleans out buttons they don’t need while they are typing a search.
  
The last significant challenge I had to overcome was browser compatibility. Like most people I start developing in Chrome and then make changes to accommodate other browsers. This application will mainly be used in Internet Explorer so this is where I spent the most time troubleshooting. The console developer tool in IE was invaluable for this project, as it helped me narrow down the errors and functionality that was either being overlooked by Chrome or simply was not supported in IE.
For example: .includes() JavaScript method and onsearch HTML event that I was using to run continuous searches turned out to not be supported in IE. I had to change .includes() out for .indexOf() and check for a value not equal to the -1 returned when there is no matching substring. I also changed out onsearch, which worked great in Chrome for oninput which works in both. When working on browser support I also had to add some CSS to display the “x” button in the text search field which Bootstrap hid in Chrome.

#### Update:
To assist in gathering user input I updated the app with a footer for user questions and feedback. The first version of this app takes advantage of IE's decision to ignore some HTTP rules and allow users to open windows explorer windows from a web app. To accommodate modern browsers, I added a second version of the app that instead of trying to access windows explorer will copy the folder path for the user to paste into the "Run" program. I even included a set of instructions in the footer for new users!

## Results
The final application feels fun to use and the simple interface turned out even better than I had hoped. Adding the search functionality was a great learning process and it is really a key feature of the application. I am sure the search will only continue to get more useful as we add more links and tools too! I have uploaded a public version of the HTML file with generic links to demonstrate the search and link-open functionality because the original version of the app contains proprietary information. Take a look [here!](https://filedn.com/lWYjvlpRciYBP9xzzyqgShB/Customer-Service-Tools/home_base/index_public.html)
  
[Back to Customer Service Tools](https://github.com/jhunschejones/Customer-Service-Tools)
