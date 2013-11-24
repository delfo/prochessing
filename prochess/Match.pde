class Match {
  // Some variables
  public  ChessBoard cs;
  public Chess c1;
   String moves;
  // A constructor
  Match(){
    cs = new ChessBoard();
     println(cs.getposition);
    c1 = new Chess(KING,WHITE,"A1");
  println(c1.type);
  println(c1.col);
  println(c1.initialPosition);
//    String moves[] = loadStrings("nakamura.pgn");
//    this.parse(moves);
//    println("there are " + moves.length + " lines");
//for (int i = 0 ; i < moves.length; i++) {
//  println(moves[i]);
//}
    
  }
  
  void parse(String[] moves){

  }

}
