$(document).ready(function() {
    $('#update-user').submit(function(event) {
      event.preventDefault(); // prevent the form from submitting normally
      
      setTimeout(function() {
        $('#response').show();
        $('#response').html('Wait...');
      }, 500);

   var updatePhoto = $('#updatePhotoInput')[0].files[0];
    var name = $('#FullName').val();
    var email = $('#Email').val();
    var role = $('#Job').val();
    var phone = $('#Phone').val();
    var about = $('#about').val();
    var address = $('#Address').val();
    var TeamId = $('#UserId').val();
    var twitter = $('#Twitter').val();
    var facebook = $('#Facebook').val();
    var instagram = $('#Instagram').val();
    var linkedin = $('#Linkedin').val();
    

    var formData = new FormData();
        formData.append('photo', updatePhoto);
        formData.append('name', name);
        formData.append('email', email);
        formData.append('role', role);
        formData.append('phone', phone);
        formData.append('about', about);
        formData.append('address' , address);
        formData.append('twitter' , twitter);
        formData.append('facebook' , facebook);
        formData.append('instagram' , instagram);
        formData.append('linkedin' , linkedin);
        formData.append('TeamId', TeamId);


    // Send an AJAX request to the server with the form data
    $.ajax({
        type: 'POST',
        url: 'update-user.php',
        processData: false, // Tell jQuery not to process the data
        contentType: false, // Tell jQuery not to set the content type
        data: formData,
        success: function(response) {
            // Parse the JSON string into an object
            var data = JSON.parse(response);
            console.log(data.photo);
             // Add a success message to the response dirole
             setTimeout(function() {
              $('#response').html('Data Updated Successfully');
             }, 2000);
             $('#Image').attr('src', "assets/img/team/" + data.photo); 
             $('#UpdateImage').attr('src', "assets/img/team/" + data.photo); 
             $('#headerPhoto').attr('src', "assets/img/team/" + data.photo); 
              // Hide the response dirole after 3 seconds
              setTimeout(function() {
                $('#response').hide();
            }, 6000);

            // Add success CSS to the response dirole
            $('#response').css({
            'background-color' : 'green',
            'color':'white',
            'font-weight': 'bold',
            'margin-bottom': '5px',
            'text-align': 'center',
            'padding-top':'4px',
            'padding-bottom':'4px'
            });

          }
        });
      });
    });

   
   

