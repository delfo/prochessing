int len = 0;
int w = 480;
int h = 480;
int fill = 0;
Moves mm;
Match m;

void setup() {
  size(w, h);
  mm = new Moves();
  m = new Match();
}

void draw() {
  
}

void mouseClicked() {
    
    len = len + int(random(10,60));
    mm.add(len);
      mm.display();
  } 

void setfill(){
  
switch(fill) {
  case 0: 
   fill=255;
    break;
  case 255: 
    fill=0;
    break;
}

}


