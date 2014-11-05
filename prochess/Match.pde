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
  Chess movingChess;
  
  boolean xChess; //true if a piece has been catched
  if (move.indexOf('x') > 0) xChess = true;
    else xChess = false;
    
  boolean matto;
    if (move.indexOf('+') > 0) matto = true;
    else matto = false;
    
  String sourceCell;
  //to do define the source cell of moving piece
  
  String destCell  ;
  if (matto)
    destCell = move.substring(move.length()-3, move.length()-1);
  else
   destCell = move.substring(move.length()-2, move.length());
    
   //get moving chess
//DEBUG  
   if (isLowerCase(move.charAt(0)) == true) //it's a pawn
      {
      //DEBUG  
      println("it is a " + wMove + " pawn!" + " moving to " + destCell);
      
      movingChess = board.getChess(PAWN, wMove, destCell);
      sourceCell = movingChess.getPosition();
      //println(sourceCell);
      } 
   else
   switch (move.charAt(0)){
     case 'R':
     movingChess = board.getChess(ROOK, wMove, destCell);
     println("it is a rook!"+ " moving to " + destCell);
     break;
     case 'N':
     println("it is a Knight!"+ " moving to " + destCell);
     break;
     case 'B':
     println("it is a Bishop!"+ " moving to " + destCell);
     break;
     case 'K':
     println("it is the KING!"+ " moving to " + destCell);
     break;
     case 'Q':
     println("she is the QUEEN!"+ " moving to " + destCell);
     break;
     case 'O':
     println("arrocco");
     break;
     default:
     println("What the hell is this?");
     break;
   }
   if (xChess == true)  println("a piece was catch");
   if (matto == true)  println("scacco al re");
}

boolean nextMove(){
  String rawMove;
  if (currentMoveIndex >= numberOfMoves)
   {
      if (whiteMove == true)
        println("THE END - WHITE - WIN!");
        else
        println("THE END - BLACK - WIN!");
      return false;
   }
  else {
    rawMove = moves.get(currentMoveIndex);
    parseMove(rawMove, whiteMove );
    whiteMove = !whiteMove;
    currentMoveIndex++;
   
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
