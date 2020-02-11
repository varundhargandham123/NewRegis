function validateForm() {
    var firstname = document.getElementById("TextBox1").value;
    if (firstname == '') {
        alert("Please enter required fields");
        return false;
    }
    var lastname = document.getElementById("TextBox2").value;
    if (lastname == '') {
        alert("Please enter required fields");
        return false;
    }
    var email = document.getElementById("TextBox3").value;
    if (email == '') {
        alert("Please enter required fields");
        return false;
    }
    var phonenumber = document.getElementById("TextBox4").value;
    if (phonenumber == '' || isNaN(phonenumber) || phonenumber.length != 10) {
        alert("Please enter number");
        return false;
    }
}