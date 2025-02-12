//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    
    
    
}
 var float=0.25;
 var blobFloat=300;
 
 //blob colors 300
 var randR1 = random(0,255);
 var randG1 = random(0,255);
 var randB1 = random(0,255);
 
 //blob color 275
 var randR2 = random (0,255);
 var randG2 = random (0,255);
 var randB2 = random (0,255);
 
 //cat position
 var catX1 = random (50,500);
 var catY1 = random (25,150);
 var catX2 = random (50,500);
 var catY2 = random (25,150);
 
//🟢draw Function - will run on repeat
draw = function(){
background(255,255,255,0);

drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));
    drawWhale(100,300,80);
    drawWhale(205,325,55);
    
    drawSeaCat(catX1,catY1);
    drawSeaCat(catX2,catY2);
    drawSeaCat(random(50,500),random(25,150));
    



    drawBlob(375,blobFloat-50, randR2, randG2, randB2);
    drawBlob(400,blobFloat,randR1, randG1, randB1);
    blobFloat-=float;
    
    if (blobFloat<240){
      float=-0.25;
    }
    if (blobFloat>300){
      float=0.25;
    }
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

//drawWhale function
var drawWhale(whaleX,whaleY,whaleSize){
textSize(whaleSize);
text("🐳",whaleX,whaleY);

}

var drawBlob(blobX,blobY, blobR, blobG, blobB){
//fill(random(0,255), random(0,255), random(0,255));

fill(blobR, blobG, blobB);
textSize(16);
text("༼ つ ◕_◕ ༽つ", blobX,blobY);

}

var drawSeaCat(catX,catY){
textSize(30);
fill(random(0,255),random(0,255),random(0,255));
text("ᓚᘏᗢ",catX,catY);

}



