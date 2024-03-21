$(document).ready(function() {
    $('#registrationForm').submit(function(e) {
        e.preventDefault();

        var formData = {
            firstName: $('#firstName').val(),
            lastName: $('#lastName').val(),
            nickname: $('#nickname').val(),
            password: $('#password').val(),
            invitationCode: $('#invitationCode').val()
        };

        $.ajax({
            type: "POST",
            url: "register.php",
            data: formData,
            success: function(response) {
                console.log(response);
                alert("Rejestracja zakończona sukcesem.");
                location.href = "http://localhost/ProjektSzkola/HTML/index.html";
            },
            error: function(xhr, status, error) {
                console.error(xhr);
            }
        });
    });
});
