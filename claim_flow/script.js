console.log("The custom script is running");

$(function () {
    $('[data-toggle="popover"]').popover()
})

$('.popover-dismiss').popover({
    trigger: 'focus'
})

// Reusable function to change image
function changeImage(image_file) {
    document.getElementById("screen_shots").src=image_file;
};
