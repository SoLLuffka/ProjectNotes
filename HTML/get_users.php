<?php
include 'db_connect.php';

$query = "SELECT Nickname, Role FROM Users";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $roleClass = $row['Role'] === 'admin' ? 'role-admin' : 'role-user';

        echo "<li>";
        echo "<i class='fas fa-user-circle avatar'></i>";
        echo "<div class='user-info'>";
        echo "<span class='username'>" . htmlspecialchars($row['Nickname']) . "</span>";
        echo "<span class='status " . $roleClass . "'>" . htmlspecialchars($row['Role']) . "</span>";
        echo "</div>";
        echo "</li>";
    }
} else {
    echo "<li>Brak użytkowników</li>";
}

$conn->close();
?>
