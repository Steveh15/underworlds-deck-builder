


test = "hello";



console.log(test);

var exportObj;



exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

console.log(exportObj);

exportObj.cards = {
  firstname  : "Stephen",
  lastname : "Mackie"
}

console.log(exportObj);


var exportObj;


exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

console.log(exportObj);

exportObj.job = {
  title  : "Programmer",
  location : "Edinburgh"
}

console.log(exportObj);