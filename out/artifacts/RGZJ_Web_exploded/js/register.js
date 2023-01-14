var usernameinput=document.getElementById("user_name");
usernameinput.onblur=checkUsername;
function checkUsername() {
    var username = usernameinput.value.trim();

    var flag=username.length>=1
    if(flag){
        document.getElementById("er1").style.display='none';
    }
    else{
        document.getElementById("er1").style.display='block';
    }
    return flag;
}

var passwordinput=document.getElementById("password");
passwordinput.onblur=checkpassword;
function checkpassword() {
    var password = passwordinput.value.trim();

    var flag=password.length>=1
    if(flag){
        document.getElementById("er2").style.display='none';
    }
    else{
        document.getElementById("er2").style.display='block';
    }
    return flag;
}

var passwordinput=document.getElementById("password");
var password2input=document.getElementById("password2");
password2input.onblur=checkpassword2;
function checkpassword2() {
    var password = passwordinput.value.trim();
    var password2 = password2input.value.trim();

    var flag=password==password2;
    if(flag){
        document.getElementById("er3").style.display='none';
    }
    else{
        document.getElementById("er3").style.display='block';
    }
    return flag;
}

var phoneinput=document.getElementById("phone");
var patt = /^[1][3-9][\d]{9}/;
phoneinput.onblur=checkphone;
function checkphone() {
    var flag=(patt.test(phoneinput.value));
    if(flag){
        document.getElementById("er4").style.display='none';
    }
    else{
        document.getElementById("er4").style.display='block';
    }
    return flag;
}


//验证邮箱
// function checkEmail(value) {
//     return /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/.test(value)
// }



var emailinput=document.getElementById("email");
var patt2 = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
emailinput.onblur=checkemail;
function checkemail() {
    var flag=(patt2.test(emailinput.value));
    if(flag){
        document.getElementById("er5").style.display='none';
    }
    else{
        document.getElementById("er5").style.display='block';
    }
    return flag;
}

// var emailinput=document.getElementById("email");
// emailinput.onblur=checkemail;
// function checkemail() {
//     var email = emailinput.value.trim();
//
//     var flag=email.length>=1;
//     if(flag){
//         document.getElementById("er5").style.display='none';
//     }
//     else{
//         document.getElementById("er5").style.display='block';
//     }
//     return flag;
// }

var addressinput=document.getElementById("address");
addressinput.onblur=checkaddress;
function checkaddress() {
    var address = addressinput.value.trim();

    var flag=address.length>=1;
    if(flag){
        document.getElementById("er6").style.display='none';
    }
    else{
        document.getElementById("er6").style.display='block';
    }
    return flag;
}

var checknuminput=document.getElementById("check_num");
checknuminput.onblur=checkchecknum;
function checkchecknum() {
    var checknum = checknuminput.value.trim();

    var flag=checknum==('cpuq' || 'CPUQ');
    if(flag){
        document.getElementById("er7").style.display='none';
    }
    else{
        document.getElementById("er7").style.display='block';
    }
    return flag;
}

var regform=document.getElementById("regform");
regform.onsubmit=function (){
    var flag = checkUsername() && checkpassword() && checkpassword2() && checkphone() &&
        checkemail() && checkaddress() && checkchecknum();
    return flag;
}