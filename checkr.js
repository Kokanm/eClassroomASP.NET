/**
 * Created by Kokanm on 10/11/2014.
 */

var usera = document.getElementById("username");
usera.addEventListener("change", chkUsr, false);

var firstName = document.getElementById("firstname");
firstName.addEventListener("change", chkNam, false);

var lastName = document.getElementById("surname");
lastName.addEventListener("change", chkSurName, false);

var email = document.getElementById("email");
email.addEventListener("change", chkEmail, false);

var emailA = document.getElementById("emaila");
emailA.addEventListener("change", chkEmailA, false);

var password = document.getElementById("pass");
password.addEventListener("change", chkPassword, false);

var submit = document.getElementById("registration");
submit.addEventListener("submit", chkSubmit, preventDefault());