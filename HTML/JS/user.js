$(document).ready(function() {
    $.ajax({
        url: "get_users.php",
        success: function(result) {
            $("#userList").html(result);
        }
    });
});
