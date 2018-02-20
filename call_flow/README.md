# Call Flow Progress 

## Objective
I wanted to build a simple browser-based application that a health care customer service representative could use to track their progress through a benefit quote on a phone call.

## Steps Taken
I used the Bootstrap 4 framework for the heading and list items, then a progress bar from W3 schools. In order to have the different list items change color when clicked, I had to write my own JavaScript file. Once I was able to get the list items to change colors, I also built an event listener and an additional JavaScript function to change the style of the progress bar and it's text as the list items are clicked by the user.
  
### Version 1.1  
After doing some user testing, there was a request to add an 8th list item. I added this list item and updated the program for all users. Another request was submitted to make a version of the application that uses check boxes so that users could go in their own order instead of just sequentially. This update has been completed in a separate "checks.html" file so that both versions are available. I had to re-write my JavaScript file as well to accommodate the new user input, this is stored as script2.js. I am especially proud of how responsive the new scripting is, updating the progress bar actively while the user is checking and/or unchecking boxes.
  
### Version 1.2
Once the app had been in the customers hands for a few weeks, I realized nobody was using the original "list-item view" and there was some domain specific details I could add to the "check-box view." To that end, I disconnected the list-item view and added a second check-box view so that there is now a separate tab in the application for two distinct user groups. In an effort to make sure the app stays functional with little effort on the part of the user, I kept the old link active but changed the content to a re-direct page pointing at the new tabs. 
  
In this version I also cleaned up the user interface by tightening the margins from the original design. This change was in response to the way I saw many users shrinking the screen down to fit next to their other windows. I also added a support footer at the bottom of the app to give users a clear place to report feature requests or bugs. Finally, I moved the instructions for the check-box pages to the heading section so they are easier to see while taking up less space on the page.

## Results
The final application is clean and basic and meets all the requirements set at the start of the project. I was able to get it running in Chrome, so I did my first set of user tests there. After implementing the additional features requested, I was also able to find a head meta tag that would enable me to require Edge mode in IE. This solved my IE compatibility issues on the platforms where I tested. I want to say a special thanks to my coworkers and the users who suggested improvements for this program. You all made this an even more helpful tool for our new team members.
  