class Match {

  ChessBoard board;
   String[] data;
   StringList moves;
   int numberOfMoves;
   int currentMoveIndex;
   boolean whiteMove;
   
  
  Match(){
    board = new ChessBoard();
    moves = new StringList();
    currentMoveIndex = 0;
    whiteMove = true;
    loadMatch();    
    //parseMatch();
  }
  
  void loadMatch (){
    
    //Load match
    println("Load new match");
    data = loadStrings("game.txt");
    for (int i = 0; i < data.length; i++) { 
      println(data[i]); 
      } 
    
    //Remove Additional Info
    String rawMoves = join(data, ' ');
    int index = rawMoves.indexOf(']');
    while (index >= 0) {
      rawMoves = rawMoves.substring( index+1, rawMoves.length());
      index = rawMoves.indexOf(']');
    }
    
    //Split moves
    index = rawMoves.indexOf('.');
    int i = 0;
     while (index >= 0) {
       //White move
       rawMoves = rawMoves.substring( index+2, rawMoves.length());
       index = rawMoves.indexOf(' ');
       moves.append(rawMoves.substring( 0, index));
       i++;
       //Black move
       rawMoves = rawMoves.substring( index+1, rawMoves.length());
       index = rawMoves.indexOf(' ');
       if (index == -1) //Last move, store the result
         {
         moves.append(rawMoves);
         break;
         }
       moves.append(rawMoves.substring( 0, index));
       i++;
       
       //Next couple
      index = rawMoves.indexOf('.');
      if (index == -1) //Last move, store the result
         {
         moves.append(rawMoves.substring(rawMoves.indexOf(' '), rawMoves.length()));
         break;
         }
     }
     numberOfMoves = moves.size()-1; 
 println(moves.size());    
}

void parseMatch() {
  String rawMove;
  boolean whiteMove = true;
  for (int i = 0 ; i < moves.size() ; i++ ) {
    rawMove = moves.get(i);
    parseMove(rawMove, whiteMove );
    whiteMove = !whiteMove;
  }
  
}
  
void parseMove(String move, boolean wMove){
    
  //which piece is moving?
  String sourceCell;
    String destCell = move.substring(move.length()-2, move.length());
    
   //get moving chess
//DEBUG  
      println(move); 
      println(destCell);
   if (isLowerCase(move.charAt(0)) == true) //it's a pawn
      {
      //DEBUG  
      println("it is a " + wMove + " pawn!");
      } 
   else
   switch (move.charAt(0)){
     case 'R':
     println("it is a rook!");
     break;
     case 'N':
     println("it is a Knight!");
     break;
     case 'B':
     println("it is a Bishop!");
     break;
     case 'K':
     println("it is the KING!");
     break;
     case 'Q':
     println("she is the QUEEN!");
     break;
     case 'O':
     println("arrocco");
     break;
     default:
     println("What the hell is this?");
     break;
   }
}

boolean nextMove(){
  String rawMove;
  if (currentMoveIndex >= numberOfMoves) return false;
  else {
    rawMove = moves.get(i);
    parseMove(rawMove, whiteMove );
    whiteMove = !whiteMove;
    return true;
  }
  
}

boolean isLowerCase (char x){

  if ((x >= 'a') && (x <= 'z'))
    return true;
  else
    return false;
}
  
}
