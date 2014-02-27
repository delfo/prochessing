//http://www6.chessclub.com/help/PGN-spec - http://www.caissa.com/chess-tools/pgn-editor.php
//
//       {special move : [O-O/O-O-O]} 
//          or 
//          {type : [-/K/Q/R/B/N] 
//          - source cell : [-/FILE/RANK/CELL] 
//          - piece taken : [-/x] 
//          - dest cell : [file-rank] 
//          - promotion : [-/=t] 
//          - mate : [-/CHECK+/CHECKMATE#]}
//
//
//


class Move {
  // Some variables
  private String move;

  Move(String rawMove){
   move= rawMove;
  }
}


