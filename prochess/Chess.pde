final boolean WHITE = true;
final boolean BLACK = false;
final boolean ALIVE = true;
final boolean DEAD = false;
final int KING = 1;
final int QUEEN = 2;
final int ROOK = 3;
final int BISHOP = 4;
final int KNIGHT = 5;
final int PAWN = 6;



class Chess {
  String initialPosition;
  StringList path;
  boolean col;
  int type;
  boolean status;

  Chess(int t, boolean c, String initPos){
     type =  t;
    col = c ;
    initialPosition = initPos;
    status = ALIVE;
  
  }
  
  void moveTo(String newcell){
    path.append (newcell);
  }
  
  String getPosition() {
    return path.get(path.size());
  }
  
  StringList getMoves() {
    return path;
  }

  int getMovesNumber () {
    return path.size();
  }
  


}
