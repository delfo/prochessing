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

//* create -> set fields (type, color, position)
//* read -> get path tail
//* update -> append new position to path
//* remove -> set as dead
//* zombie -> set as zombie


class Chess {
  int type;
  boolean pcolor;
  StringList path;
  boolean alive;
  

  Chess(int _type, boolean _color, String _initPos){
     type =  _type;
    pcolor = _color ;
    path = new StringList();
    path.append(_initPos);
    alive = true;
  
  }
  
  String getPosition(){
    return path.get(path.size());
  }
  
  void setPosition(String position) {
    path.append(position);
  }
  
 


}
