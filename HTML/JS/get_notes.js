let currentNoteIndex = 0;
let totalNotes = 0;

$(document).ready(function() {
    loadNotes();

    $('#lessonSelect').change(function() {
        var selectedLesson = $(this).val();
        displayLesson(selectedLesson);
    });

    $('#nextLesson').click(function() {
        if (currentNoteIndex < totalNotes - 1) {
            currentNoteIndex++;
            displayLesson(currentNoteIndex);
        }
    });

    $('#prevLesson').click(function() {
        if (currentNoteIndex > 0) {
            currentNoteIndex--;
            displayLesson(currentNoteIndex);
        }
    });
});

function loadNotes() {
    $.ajax({
        url: "get_notes.php",
        type: "GET",
        dataType: "json",
        success: function(data) {
            if (!data.error) {
                totalNotes = data.length;
                data.forEach(function(note, index) {
                    $('#lessonSelect').append(new Option('Lekcja #' + note.lessonID, index));
                });
                displayLesson(currentNoteIndex);
            }
        },
        error: function() {
            alert("Wystąpił błąd podczas ładowania notatek.");
        }
    });
}

function displayLesson(index) {
    $.ajax({
        url: "get_notes.php",
        type: "GET",
        dataType: "json",
        success: function(data) {
            if (!data.error && data.length > index) {
                var note = data[index];
                $('#displayedLessonNumber').text(note.lessonID);
                $('#displayedLessonTitle').text(note.title);
                $('#displayedLessonContent').html(note.content);
                $('#displayedExampleCode').html(note.exampleCode);
            }
            $('#lessonSelect').val(index);
        },
        error: function() {
            alert("Wystąpił błąd podczas ładowania notatek.");
        }
    });
}