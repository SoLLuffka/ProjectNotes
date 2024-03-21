<?php
session_start(); // Pamiętaj, aby dodać na samym początku pliku

include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $lessonNumber = $conn->real_escape_string($_POST['lessonNumber']);
    $title = $conn->real_escape_string($_POST['lessonTitle']);
    $content = $conn->real_escape_string($_POST['lessonContent']);
    $exampleCode = $conn->real_escape_string($_POST['lessonCode']);

    if (isset($_SESSION['userId'])) {
        $userId = $_SESSION['userId']; // Pobranie ID użytkownika z sesji

        $stmt = $conn->prepare("INSERT INTO lessonnotes (LessonNumber, Title, Content, ExampleCode, UserID) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssi", $lessonNumber, $title, $content, $exampleCode, $userId);

        if ($stmt->execute()) {
            echo "Nota została zapisana.";
        } else {
            echo "Błąd: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "Błąd: użytkownik nie jest zalogowany.";
    }
}

$conn->close();
?>
