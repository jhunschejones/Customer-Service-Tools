console.log("The custom script for the claim flow page is running.");

// Enable pop-overs
$(function () {
    $('[data-toggle="popover"]').popover()
})

// Closes pop-over when user clicks away
$('.popover-dismiss').popover({
    trigger: 'focus'
})
