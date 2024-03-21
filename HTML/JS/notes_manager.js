$(document).ready(function() {
    $('#notesForm').submit(function(e) {
        e.preventDefault();
        saveNote();
    });

    $('#devlogsForm').submit(function(e) {
        e.preventDefault();
        saveDevLog();
    });
});

function saveNote() {
    var data = {
        lessonNumber: $('#lessonNumber').val(),
        lessonTitle: $('#lessonTitle').val(),
        lessonContent: $('#lessonContent').val(),
        lessonCode: $('#lessonCode').val()
    };

    $.ajax({
        type: "POST",
        url: "save_note.php",
        data: data,
        success: function(response) {
            alert(response);
        },
        error: function() {
            alert("Wystąpił błąd podczas zapisywania noty.");
        }
    });
}

function saveDevLog() {
    var data = {
        devlogNumber: $('#devlogNumber').val(),
        devlogTitle: $('#devlogTitle').val(),
        devlogContent: $('#devlogContent').val()
    };

    $.ajax({
        type: "POST",
        url: "save_devlog.php",
        data: data,
        success: function(response) {
            alert(response);
        },
        error: function() {
            alert("Wystąpił błąd podczas zapisywania devloga.");
        }
    });
}
