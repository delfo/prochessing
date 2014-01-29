import com.codethesis.pgnparse.*;
import com.codethesis.test.*;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import javax.swing.*; 


int len = 0;
int w = 480;
int h = 480;
int fill = 0;
Match m;

PGNParser parser;
PGNSource source;
//PGNSource source;
File file;




void setup() {
  size(w, h);
  m = new Match();

  }


void draw() {
  
}

void mouseClicked() {
    
   
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


