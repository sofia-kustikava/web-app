

function  myAlert(html) {
    return `
        <div class="alert alert-success alert-dismissible">
             <a href="#" class="close">&times;</a>
             ${html}
        </div>
    `;
}
$("#password-form").on('submit', function (e){
    e.preventDefault();
    $.post("/user/profile", {password: $('#password').val(), _csrf: $("input[name='_csrf']").val()}, function (data) {
       console.log(data)
    })
   $('#result').html(myAlert('custom text'))
})
console.log(1)