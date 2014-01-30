class Match {

  ChessBoard board;
   String[] data;
   StringList moves;
   int numberOfMoves;
   
  
  Match(){
    board = new ChessBoard();
    moves = new StringList();
    loadMatch();    
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
