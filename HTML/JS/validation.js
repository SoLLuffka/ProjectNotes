document.addEventListener("DOMContentLoaded", function() {
    document.getElementById('registrationForm').addEventListener('submit', function(e) {
        e.preventDefault(); // Zawsze zapobiegaj domyślnemu wysłaniu
        if (validateForm()) {
            submitRegistrationForm();
        }
    });
});

function validateForm() {
    var firstName = document.getElementById('firstName').value;
    var lastName = document.getElementById('lastName').value;
    var nickname = document.getElementById('nickname').value;
    var password = document.getElementById('password').value;
    var invitationCode = document.getElementById('invitationCode').value;

    var nameRegex = /^[a-zA-Z-']+$/;
    var nickRegex = /^\w{3,15}$/;
    var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    var invitationRegex = /^[a-zA-Z0-9]+$/;

    if (!nameRegex.test(firstName) || !nameRegex.test(lastName)) {
        alert('Proszę wpisać poprawne imię i nazwisko.');
        return false;
    }
    if (!nickRegex.test(nickname)) {
        alert('Proszę wpisać poprawny nick.');
        return false;
    }
    if (!passwordRegex.test(password)) {
        alert('Hasło musi zawierać minimum 8 znaków, w tym jedną literę i jedną cyfrę.');
        return false;
    }
    if (invitationCode && !invitationRegex.test(invitationCode)) {
        alert('Proszę wpisać poprawny kod zaproszenia.');
        return false;
    }

    return true;
}

function submitRegistrationForm() {
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
            if (response === "Rejestracja zakończona sukcesem.") {
                alert(response);
                location.href = "http://localhost/ProjektSzkola/HTML/index.html";
            } else {
                alert(response); // Wyświetl odpowiedź (np. błąd związany z kodem zaproszenia)
            }
        },
        error: function(xhr, status, error) {
            console.error(xhr);
            alert("Wystąpił błąd podczas rejestracji.");
        }
    });
}
