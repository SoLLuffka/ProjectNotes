<?php
session_start(); // Rozpoczęcie sesji na samym początku skryptu

include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $conn->real_escape_string($_POST['username']);
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT UserID, Password FROM Users WHERE Nickname = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['Password'])) {
            // Ustawienie zmiennej sesji
            $_SESSION['userId'] = $row['UserID'];
            echo "Success";
        } else {
            echo "Nieprawidłowe hasło.";
        }
    } else {
        echo "Nie znaleziono użytkownika.";
    }

    $stmt->close();
}

$conn->close();
?>
