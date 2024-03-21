document.querySelectorAll('.log-title').forEach(button => {
    button.addEventListener('click', () => {
        const logContent = button.nextElementSibling;
        
        // Toggle the display of the log content.
        logContent.style.display = logContent.style.display === "block" ? "none" : "block";
        
        // Ensure that the page does not shrink or expand in width.
        logContent.style.overflow = 'auto'; // Enable scrolling within the log content.
    });
});

document.addEventListener('DOMContentLoaded', () => {
    const subBtn = document.querySelector('.sub-btn');
    
    subBtn.addEventListener('click', (e) => {
        e.preventDefault(); // Zapobiega przejściu do linku
        const subMenu = subBtn.nextElementSibling;
        subMenu.style.display = subMenu.style.display === 'block' ? 'none' : 'block';
    });
});