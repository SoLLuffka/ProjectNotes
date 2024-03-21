$(document).ready(function() {
    $('#loginForm').submit(function(e) {
        e.preventDefault();
        var username = $('#username').val();
        var password = $('#password').val();

        $.ajax({
            type: "POST",
            url: "login.php",
            data: {
                username: username,
                password: password
            },
            success: function(response) {
                if (response === "Success") {
                    alert("Zalogowano pomyślnie.");
                    // Przekierowanie na stronę główną lub dashboard
                    window.location.href = 'http://localhost/ProjektSzkola/HTML/home.html'; // Zaktualizuj ścieżkę
                } else {
                    alert(response); // Wyświetl błędy logowania
                }
            },
            error: function() {
                alert("Wystąpił błąd podczas logowania.");
            }
        });
    });
});
