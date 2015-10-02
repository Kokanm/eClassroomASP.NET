/**
 * Created by Kokanm on 9/11/2014.
 */

var users = ["student", "profesor", "administrator"];

var emails= ["student@mail.com", "profesor@mail.com",
    "administrator@mail.com"];

var usr = true;
var nam = true;
var surname = true;
var password = true;
var email = true;

function chkUsr(event){
    var myUsr = event.currentTarget;

    if(users.indexOf(myUsr.value) > -1) {
        alert("User already exists. Pick another username.");
        myUsr.style.backgroundColor="#EE7777";
        myUsr.focus();
        usr = false;
    } else {
        myUsr.style.backgroundColor="#FFFFFF";
        usr = true;
    }
}

function chkNam(event) {

    var myNam = event.currentTarget;
    var pos = myNam.value.search(/^[A-Z][a-z]+$/);

    if (pos !== 0) {
        myNam.style.backgroundColor="#EE7777";
        myNam.focus();
        nam = false;
    } else {
        myNam.style.backgroundColor="#FFFFFF";
        nam =  true;
    }

}

function chkSurName(event) {

    var mySurName = event.currentTarget;
    var pos = mySurName.value.search(/^[A-Z][a-z]+$/);

    if (pos !== 0) {
        mySurName.style.backgroundColor="#EE7777";
        mySurName.focus();
        surname = false;
    } else {
        mySurName.style.backgroundColor="#FFFFFF";
        surname =  true;
    }

}

function chkEmail(event){
    var myEmail = event.currentTarget;
    var pos = myEmail.value.search(/^\S+@\S+\.\S+$/);

    if (pos !== 0) {
        myEmail.style.backgroundColor="#EE7777";
        myEmail.focus();
        email = false;
    } else {
        myEmail.style.backgroundColor="#FFFFFF";
        email = true;
    }

    if(emails.indexOf(myEmail.value) > -1) {
        alert("A user with that email already exists.");
        myEmail.style.backgroundColor="#EE7777";
        myEmail.focus();
        email = false;
    } else {
        myEmail.style.backgroundColor="#FFFFFF";
        email = true;
    }
}

function chkEmailA(event) {
    var email1 = event.currentTarget;
    var email2 = document.getElementById("email");

    if (email1.value !== email2.value) {
        alert("The emails don't match!");
        email = false;
    } else {
        email = true;
    }
}

function chkPassword(event){
    var myPassword = event.currentTarget;
    var pos = myPassword.value.search(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/);

    if (pos !== 0) {
        myPassword.style.backgroundColor="#EE7777";
        myPassword.focus();
        password = false;
    } else {
        myPassword.style.backgroundColor="#FFFFFF";
        password = true;
    }
}

function chkSubmit(event){
    if(usr && nam && surname && password && email){
        return true;
    }else{
        alert("You filled the form incorrectly!");
        return false;
    }
}