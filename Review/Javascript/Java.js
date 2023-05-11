
function checkNum(){
    var num = document.getElementById("num").value
    if(num<=1 || num>=100) alert("Number out of range")
    else return num
}

function factorial(x){
    if (x === 0)
 {
    return 1;
 }
  return x * factorial(x-1);
}

function isPrime(number) {
    if (number <= 1) {
      return "Not a prime number";
    }
    for (let i = 2; i < number; i++) {
      if (number % i === 0) {
        return "Not a prime number";
      }
    }
    return "A prime number";
  }
function change(obj){
    "use strict";
    var num = checkNum()
    var selectVal = obj.value
    var sum=0
    if(selectVal === 'option1'){
        for(var i =0;i<num;i++){
            sum+=i
        }
        document.getElementById("result").value = sum
    }
    else if(selectVal==='option2'){
        document.getElementById("result").value = factorial(num)
    }
    else if(selectVal==='option3'){
        var result=""
        for(var i=0;i<num;i++){
            if(i%2!=0) result += i+", "
        }
        document.getElementById("result").value = result.substring(0,result.length-2)
    }
    else if(selectVal==='option4'){
        var result=""
        for(var i=0;i<num;i++){
            if(i%2==0) result += i+", "
        }
        document.getElementById("result").value = result.substring(0,result.length-2)
    }
    else if(selectVal==='option5'){
        document.getElementById("result").value = isPrime(num)
    }
}