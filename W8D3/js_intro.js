// function titleize (names, printCallback) {
//     let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
//     printCallback(titleized);
// }
// let names = ['Andy', 'Peter', 'Rosemary']

//     titleize(
//         names, function (names) {
//             names.forEach(name => console.log(name));
//         });


function Elephant (name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} goes "phrRRRRRRRRRRR!!!!!!!"`);
};

Elephant.prototype.grow = function(){
    this.height += 12;
};

Elephant.prototype.addTrick = function(trick){
    this.tricks.push(trick);
};

Elephant.prototype.play = function(){
    let i = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[i]}`);
};


let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


// ellie.trumpet();
// ellie.grow();
// ellie.addTrick('being a good girl');
// ellie.play();

function paradeHelper(elephant) {
    console.log(`${elephant.name} is trotting by!`);
}

// herd.forEach(elephant => paradeHelper(elephant));

function dinerBreakfast(){
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);

    return function(addon){
        order = `${order.slice(0, order.length -8)} and ${addon} please`;
        console.log(order);
    };
};


let bfastOrder = dinerBreakfast();
bfastOrder("choco");
bfastOrder("cookie");
