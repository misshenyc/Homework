function madLib(verb, adj, none) {
    return `we shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${none.toUpperCase()}`
}

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}


function fizzBuzz(array) {
    let new_arr = [];
    array.forEach(ele => {
        if (ele % 3 === 0 ^ ele % 5 ===0) {
            new_arr.push(ele);
        }
    });
    return new_arr;
}

function isPrime(num){
   if (num < 2) {return false};
   for (let i = 2; i < num; i++) {
       if (num  % i === 0) {return false};
   }
   return true;
}

function sumofNPrimes(n) {
    let sum = 0;
    let count = 0;
    let i = 2;
    while (count < n) {
        if (isPrime(i)) {
            sum += i;
            count++;
        }
        i++;
    }
    return sum;
}


