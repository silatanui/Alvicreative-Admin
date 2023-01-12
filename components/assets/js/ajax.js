
// JavaScript/Ajax code

$(document).ready(function() {
$("#contact-form").submit(function(e) {
    e.preventDefault();
    var name = $("#name").val();
    var email = $("#email").val();
    var subject = $("#subject").val();
    var message = $("#message").val();
    $.ajax({
        url: "insert.php",
        method: "POST",
        data: {
            name: name,
            email: email,
            subject: subject,
            message: message
        },
        beforeSend: function() {
            $("#loader").show();
            $("#success-message").hide();
        },
        success: function(response) {
            setTimeout(function() {
            $("#loader").hide();
            $("#success-message").show();
            }, 5000);
        }
        });
    });
    });
