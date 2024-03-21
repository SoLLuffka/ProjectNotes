<?php
session_start();
include 'db_connect.php';

header('Content-Type: application/json');

$response = array();
$query = "SELECT LessonID, Title, Content, ExampleCode FROM LessonNotes ORDER BY LessonID ASC";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $response[] = array(
            'lessonID' => $row['LessonID'], // Zmienione z LessonNumber na LessonID
            'title' => $row['Title'],
            'content' => $row['Content'],
            'exampleCode' => $row['ExampleCode']
        );
    }
    echo json_encode($response);
} else {
    echo json_encode(array('error' => 'Brak notatek'));
}

$conn->close();
?>
