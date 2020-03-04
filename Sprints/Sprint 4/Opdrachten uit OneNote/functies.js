var text;
var code = prompt("Vul uw promotiecode in", 'uw code');
if (code == null || code == "") {
  text = "User cancelled the prompt.";
} else {
  text = "De code die u invoerde was: " + code + "";
}
document.getElementById("divResult").innerHTML = text;
