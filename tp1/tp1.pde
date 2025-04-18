PImage miFoto;
miFoto = loadImage("autoretrato.png");


size(800, 400);
background(300,150,150);   //mi color favorito es el rosa

image(miFoto, 0, 0, 400, 400);

translate(200,0);

fill(110,60,50);
triangle(400,100,320,400,480,400);          //colitadel pelo
 

fill(250,200,130);
stroke(220,150,70);
rect(425,300, -50,100);            //cuello

stroke(245,240,230);
strokeWeight(3);
line(400,400,375,370);
line(400,400,425,370);    //collar


stroke(220,150,70);
strokeWeight(2);
fill(250,200,130);
ellipse(400,200, 200,300);       //cabeza

fill(240,230,220);
stroke(230,220,220);
ellipse(360,170, 50,50);
ellipse(440,170, 50,50);

fill(50,120,180);         //el color de mis ojos
ellipse(360,170, 28,28); 
ellipse(440,170, 28,28);

fill(0,0,0);
stroke(0,0,0);
ellipse(360,170, 10,10);             //pupila
ellipse(440,170, 10,10);

noStroke();
fill(250,200,130);                          //RETOQUE DEL OJO
arc(360,160,45,30,PI,TWO_PI);
arc(440,160,45,30,PI,TWO_PI);


stroke(220,150,70);
line(404,190, 390,230);       //nariz
line(390,230, 409,230);

stroke(120,120,120);
line(404,235, 404,225);      //arito de la nariz


noFill();
strokeWeight(6);
stroke(200,140,80);            //cejas
arc(360,138,40,10,PI,TWO_PI);
arc(440,138, 40,10,PI, TWO_PI);


stroke(240,130,120);
strokeWeight(8);                 //boca
arc(400,275,50,20,0,PI);


fill(250,200,130);
noStroke();
ellipse(300,200,55,45);      //orejas
ellipse(500,200,55,45);

stroke(120,120,120);
strokeWeight(6);
line(295,218,295,235);      //aritos
line(505,218,505,235);
strokeWeight(4);
line(268,205,278,200);


noFill();
strokeWeight(12);
stroke(110,60,50);
arc(400,110, 145,20,PI,TWO_PI);      //PELO 

fill(110,60,50);
arc(400,110,140,105,PI,TWO_PI);      //pelo

noFill();
arc(400,150,180,130,PI,TWO_PI);     //PEL0


stroke(180,130,90);
strokeWeight(3);
line(400,107,400,55);   //raya del pelo
