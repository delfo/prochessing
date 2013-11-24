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
Moves mm;
Match m;
PGNParser parser;
PGNSource source;
File file;




void setup() {
  size(w, h);
  mm = new Moves();
  m = new Match();
  parser = new PGNParser();

 // source = new PGNSource("game.txt");
 // game = source.listGames();
 // println(source.listGames(true));
//println(source.toString());
try { 
  UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName()); 
} catch (Exception e) { 
  e.printStackTrace();  
} 

// create a file chooser 
final JFileChooser fc = new JFileChooser(); 
 
// in response to a button click: 
int returnVal = fc.showOpenDialog(this); 
 
if (returnVal == JFileChooser.APPROVE_OPTION) { 
   file = fc.getSelectedFile(); 
  // see if it's an image 
  // (better to write a function and check for all supported extensions) 
  if (file.getName().endsWith("jpg")) { 
    // load the image using the given file path
    PImage img = loadImage(file.getPath()); 
    if (img != null) { 
      // size the window and show the image 
      size(img.width,img.height); 
      image(img,0,0); 
    } 
  } else { 
    // just print the contents to the console 
    // note: loadStrings can take a Java File Object too 
    String lines[] = loadStrings(file); 
    for (int i = 0; i < lines.length; i++) { 
      println(lines[i]);  
    } 
  } 
} else { 
  println("Open command cancelled by user."); 
}


   println(file.toString());  
    if (!file.exists()) {
      System.out.println("File does not exist!");
      return;
    }
   source = new PGNSource(file);
//    Iterator<PGNGame> i = source.listGames().iterator();
//    
//    while (i.hasNext()) {
//      PGNGame game = i.next();
//      
//      System.out.println("############################");
//      Iterator<String> tagsIterator = game.getTagKeysIterator();
//      
//      while (tagsIterator.hasNext()) {
//        String key = tagsIterator.next();
//        System.out.println(key + " {" + game.getTag(key) + "}");
//      }
//      
//      System.out.println();
//      Iterator<PGNMove> movesIterator = game.getMovesIterator();
//      int num = 1;
//      
//      while (movesIterator.hasNext()) {
//        PGNMove move = movesIterator.next();
//        
//        if (num % 2 == 1 && !move.isEndGameMarked()) {
//          System.out.print((num + 1) / 2 + ". ");
//        }
//        
//        num++;
//        
//        if (move.isEndGameMarked()) {
//          System.out.print("(" + move.getMove() + ")");
//        } else if (move.isKingSideCastle()) {
//          System.out.print("[O-O] ");
//        } else if (move.isQueenSideCastle()) {
//          System.out.print("[O-O-O] ");
//        } else {
//          System.out.print("[" + move.getFromSquare() + "]->[" + move.getToSquare() + "] ");
//        }
//      }
//      
//      System.out.println();
//    }
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


