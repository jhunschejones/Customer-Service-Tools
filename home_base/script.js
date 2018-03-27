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

// used to copy folder path to clipboard for modern browsers
function copyToClipboard(text) {
    if (window.clipboardData && window.clipboardData.setData) {
        // IE specific code path to prevent textarea being shown while dialog is visible.
        return clipboardData.setData("Text", text); 

    } else if (document.queryCommandSupported && document.queryCommandSupported("copy")) {
        var textarea = document.createElement("textarea");
        textarea.textContent = text;
        textarea.style.position = "fixed";  // Prevent scrolling to bottom of page in MS Edge.
        document.body.appendChild(textarea);
        textarea.select();
        try {
            return document.execCommand("copy");  // Security exception may be thrown by some browsers.
        } catch (ex) {
            console.warn("Copy to clipboard failed.", ex);
            return false;
        } finally {
            document.body.removeChild(textarea);
        }
    }
}

// enable popovers
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});

// auto-hide pop overs after 3000ms
$('button').on('shown.bs.popover', function () {
    var $pop = $(this);
    setTimeout(function () {
        $pop.popover('hide');
    }, 2500);
    setTimeout(function () {
        $pop.popover();
    }, 2700);
});