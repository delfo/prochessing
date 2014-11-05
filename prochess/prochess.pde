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

void setup() {
  size(w, h);
  m = new Match();

  }


void draw() {
  if (m.currentMoveIndex < m.numberOfMoves)
      m.nextMove();
      else
      {
        m.nextMove();
      println(m.moves); 
      for (int i=0 ; i < m.board.set.length; i++)
      {
        println("TYPE:" + m.board.set[i].type ); 
        println("PATH:" + m.board.set[i].path ); 
        println("COLOR:" + m.board.set[i].pcolor ); 
        println("ALIVE:" + m.board.set[i].alive ); 
      }
        noLoop ();
      }
}

void mouseClicked() {
      m.nextMove();
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


