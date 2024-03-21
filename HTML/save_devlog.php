<?php
include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $devlogNumber = $conn->real_escape_string($_POST['devlogNumber']);
    $title = $conn->real_escape_string($_POST['devlogTitle']);
    $content = $conn->real_escape_string($_POST['devlogContent']);
    $userId = $_SESSION['userId']; // Zakładając, że ID użytkownika jest przechowywane w sesji

    $stmt = $conn->prepare("INSERT INTO DevLogs (Number, Title, Content, UserID) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("sssi", $devlogNumber, $title, $content, $userId);

    if ($stmt->execute()) {
        echo "DevLog został zapisany.";
    } else {
        echo "Błąd: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>
