class Match {

  ChessBoard board;
   String[] data;
   String[] moves;
   
  
  Match(){
    board = new ChessBoard();
    moves = new String[100];
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
    println(rawMoves);
    
    //Split moves
    index = rawMoves.indexOf('.');
    int i = 0;
     while (index >= 0) {
       //White move
       rawMoves = rawMoves.substring( index+2, rawMoves.length());
       index = rawMoves.indexOf(' ');
       moves[i] = rawMoves.substring( 0, index);
       println(moves[i]);
       i++;
       //Black move
       rawMoves = rawMoves.substring( index+1, rawMoves.length());
       index = rawMoves.indexOf(' ');
       if (index == -1)
         {
         moves[i] = rawMoves;
         break;
         }
       moves[i] = rawMoves.substring( 0, index);
       println(moves[i]);
       i++;
       
       //Next couple
      index = rawMoves.indexOf('.');
     }
     
}
