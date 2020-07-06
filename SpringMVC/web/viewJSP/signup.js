function validate() {
    var name = document.form.name.value;
    var email = document.form.email.value;
    var username = document.form.username.value;
    var password = document.form.password.value;
    if (name === null || name === "") {
        alert("Username cannot be blank");
        return false;
    }else if (email === null || email === "") {
        alert("Password cannot be blank");
        return false;
    }else if (username === null || username === "") {
        alert("Username cannot be blank");
        return false;
    }else if (password === null || password === "") {
        alert("Password cannot be blank");
        return false;
    }
}
