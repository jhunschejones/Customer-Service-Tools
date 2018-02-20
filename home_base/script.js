// This is my check to make sure the browser is running my script.js file
console.log("a custom script is running");

// build an array of all the button elements on the page
var buttonsList = document.getElementsByTagName("button");
var userInput ="";

function getInput() {

    // get value entered into text input, set to uppercase
    userInput = document.getElementById("myInput").value.toUpperCase();
    // if you remove all spaces and there is nothing in the input field
    // then set all buttons to visible. This addresses empty searches and
    // is used later to display all buttons when the box is blank
    if (userInput.trim().length == 0){
        for (var i = 0; i < buttonsList.length; i++)
        buttonsList[i].style.display = "";

    } else {
        for (var i = 0; i < buttonsList.length; i++) {
            // using .indexof() instead of .includes() due to lack of support in IE
            // .indexof() returns -1 if the string is not found
            if(buttonsList[i].value.toUpperCase().indexOf(userInput)!=-1){
                buttonsList[i].style.display = "";
            } else {
                buttonsList[i].style.display = "none";
            }
        }
    }
}

// using this function to call links with my button elements and
// open them in a new tab
function openInNewTab(url) {
    var win = window.open(url, '_blank');
    win.focus();
}

// using this tiny bit of jquery to run my getInput() function when
// the user clicks on the search box (including when the "x" is clicked)
// this solves a bug where the 'x' was clicked and the buttons did
// not repopulate
$("#myInput").on("click", getInput());
