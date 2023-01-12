
 $(document).ready(function() {
    // Get the form element
    var form = $('#registration-form');

    // Handle the form submission
    form.submit(function(event) {
        // Prevent the form from submitting normally
        event.preventDefault();

        // Get the data from the form
        var formData = {
            'fullName': $('input[name=fullname]').val(),
            'email': $('input[name=email]').val(),
            'username': $('input[name=username]').val(),
            'password': $('input[name=password]').val()
        };

        // Send the data to the PHP file using ajax
        $.ajax({
            url: 'insert.php',
            type: 'POST',
            data: formData,
            success: function(responseText) {
                // set the response as the content of the division
                 document.getElementById('message').innerHTML = responseText;
                
                 if(responseText.success){
                // form was successfully submitted
                setTimeout(function() {
                    window.location.replace("pages-login.html");
                }, 3000);
               
                 }else{
                  // there were errors, display them to the user
                  var errors = '';
                  for (var i = 0; i < response.errors.length; i++) {
                    if (response.errors[i].field === 'email') {
                      // this is an error related to the email field
                      errors += '<p>' + response.errors[i].message + '</p>';
                    }
                  }
                  document.getElementById('message').innerHTML = errors;
                 }
            }
        });
    });
});


