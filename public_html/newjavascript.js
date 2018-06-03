var Animal =function(){
    this. name = 'Just animal';
    this. speed = 100;
 
};
Animal. prototype.run = function (){
    alert("The" + this.name +'is runs, speed =' + this. speed);
    
};
 var Rabbit = new Animal ();
 Rabbit.speed = 20;
 Rabbit.run(); /// The Just animal is runs, speed = 20
 Rabbit.name = 'Bunny';
 Rabbit.run();/// The Bunny is runs, speed = 20

