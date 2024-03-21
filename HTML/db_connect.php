<?php
// Połączenie z bazą danych
$host = "localhost";
$username = "root"; // Twoja nazwa użytkownika bazy danych
$password = "";     // Twoje hasło do bazy danych
$dbname = "Notatki4I"; // Nazwa Twojej bazy danych

// Tworzenie połączenia
$conn = new mysqli($host, $username, $password, $dbname);

// Sprawdzenie połączenia
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
