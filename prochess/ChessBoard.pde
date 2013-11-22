class ChessBoard {
  // Some variables
  Chess[] set= new Chess[32];
  // A constructor
  ChessBoard(){
    set[0] = new Chess(ROOK,WHITE,"A1");
    set[1] = new Chess(KNIGHT,WHITE,"B1");
    set[2] = new Chess(BISHOP,WHITE,"C1");
    set[3] = new Chess(QUEEN,WHITE,"D1");
    set[4] = new Chess(KING,WHITE,"E1");
    set[5] = new Chess(BISHOP,WHITE,"F1");
    set[6] = new Chess(KNIGHT,WHITE,"G1");
    set[7] = new Chess(ROOK,WHITE,"H1");
    set[8] = new Chess(PAWN,WHITE,"A2");
    set[9] = new Chess(PAWN,WHITE,"B2");
    set[10] = new Chess(PAWN,WHITE,"C2");
    set[11] = new Chess(PAWN,WHITE,"D2");
    set[12] = new Chess(PAWN,WHITE,"E2");
    set[13] = new Chess(PAWN,WHITE,"F2");
    set[14] = new Chess(PAWN,WHITE,"G2");
    set[15] = new Chess(PAWN,WHITE,"H2");
    
    set[16] = new Chess(PAWN,BLACK,"A7");
    set[17] = new Chess(PAWN,BLACK,"B7");
    set[18] = new Chess(PAWN,BLACK,"C7");
    set[19] = new Chess(PAWN,BLACK,"D7");
    set[20] = new Chess(PAWN,BLACK,"E7");
    set[21] = new Chess(PAWN,BLACK,"F7");
    set[22] = new Chess(PAWN,BLACK,"G7");
    set[23] = new Chess(PAWN,BLACK,"H7");
    set[24] = new Chess(ROOK,BLACK,"A8");
    set[25] = new Chess(KNIGHT,BLACK,"B8");
    set[26] = new Chess(BISHOP,BLACK,"C8");
    set[27] = new Chess(QUEEN,BLACK,"D8");
    set[28] = new Chess(KING,BLACK,"E8");
    set[29] = new Chess(BISHOP,BLACK,"F8");
    set[30] = new Chess(KNIGHT,BLACK,"G8");
    set[31] = new Chess(ROOK,BLACK,"H8");
  }
  
  void add(int newm){

  }
  
  void render(){

  }
  
  String getPosition (Chess c)
  {
    return c.path[c.path.size-1];
  }
  

}
