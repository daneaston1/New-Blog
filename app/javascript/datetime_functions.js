// app/assets/javascripts/datetime_functions.js

function insertCurrentDateTime() {
    var currentDate = new Date();
    var formattedDate = currentDate.toISOString().slice(0, 16); // Format: YYYY-MM-DDTHH:MM
    document.getElementById('blog_post_published_at_1i').value = currentDate.getFullYear();
    document.getElementById('blog_post_published_at_2i').value = currentDate.getMonth() + 1;
    document.getElementById('blog_post_published_at_3i').value = currentDate.getDate();
    document.getElementById('blog_post_published_at_4i').value = currentDate.getHours();
    document.getElementById('blog_post_published_at_5i').value = currentDate.getMinutes();
}
