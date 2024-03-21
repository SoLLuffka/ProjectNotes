<?php
include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstName = $conn->real_escape_string($_POST['firstName']);
    $lastName = $conn->real_escape_string($_POST['lastName']);
    $nickname = $conn->real_escape_string($_POST['nickname']);
    $password = $conn->real_escape_string($_POST['password']);
    $invitationCode = $conn->real_escape_string($_POST['invitationCode']);
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Sprawdzenie klucza zaproszenia
    $stmt = $conn->prepare("SELECT IsUsed FROM InvitationKeys WHERE InvitationKey = ?");
    $stmt->bind_param("s", $invitationCode);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 0) {
        echo "Kod zaproszenia nie istnieje.";
        $stmt->close();
    } else {
        $row = $result->fetch_assoc();
        if ($row['IsUsed']) {
            echo "Kod zaproszenia został już wykorzystany.";
            $stmt->close();
        } else {
            $stmt->close();

            // Kontynuacja rejestracji
            $insertStmt = $conn->prepare("INSERT INTO Users (FirstName, LastName, Nickname, Password, InvitationCode, Role) VALUES (?, ?, ?, ?, ?, 'user')");
            $insertStmt->bind_param("sssss", $firstName, $lastName, $nickname, $hashedPassword, $invitationCode);

            if ($insertStmt->execute()) {
                echo "Rejestracja zakończona sukcesem.";

                // Oznaczenie klucza zaproszenia jako użytego
                $updateStmt = $conn->prepare("UPDATE InvitationKeys SET IsUsed = TRUE WHERE InvitationKey = ?");
                $updateStmt->bind_param("s", $invitationCode);
                $updateStmt->execute();
                $updateStmt->close();
            } else {
                echo "Błąd podczas rejestracji: " . $insertStmt->error;
            }

            $insertStmt->close();
        }
    }
}

$conn->close();
?>
