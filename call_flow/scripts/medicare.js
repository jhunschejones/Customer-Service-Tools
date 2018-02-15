console.log("The custom script is running");

// Update progress bar

var all_checks = document.getElementById("checks");
var count = 0;

function progress_bar(count) {
    if (count == 0) {
        document.getElementById("bar").style.width = "0%";
        document.getElementById("bar").innerHTML = "&nbsp;";
    } else if (count == 1) {
        document.getElementById("bar").style.width = "14%";
        document.getElementById("bar").innerHTML = "14%";
    } else if (count == 2) {
        document.getElementById("bar").style.width = "28%";
        document.getElementById("bar").innerHTML = "28%";
    } else if (count == 3) {
        document.getElementById("bar").style.width = "42%";
        document.getElementById("bar").innerHTML = "42%";
    } else if (count == 4) {
        document.getElementById("bar").style.width = "56%";
        document.getElementById("bar").innerHTML = "56%";
    } else if (count == 5) {
        document.getElementById("bar").style.width = "71%";
        document.getElementById("bar").innerHTML = "71%";
    } else if (count == 6) {
        document.getElementById("bar").style.width = "85%";
        document.getElementById("bar").innerHTML = "85%";
    } else if (count == 7) {
        document.getElementById("bar").style.width = "100%";
        document.getElementById("bar").innerHTML = "100%";
    };
};


all_checks.addEventListener("click", function() {
    count = document.querySelectorAll('input[type="checkbox"]:checked').length;
    progress_bar(count);
});


// Clears all check boxes when the "clear" button is clicked
function clearForm() { 
    document.getElementById("box1").checked=false;  
    document.getElementById("box2").checked=false; 
    document.getElementById("box3").checked=false; 
    document.getElementById("box4").checked=false;
    document.getElementById("box5").checked=false;
    document.getElementById("box6").checked=false;
    document.getElementById("box7").checked=false;
    count = 0;
    progress_bar(count);
}; 
    