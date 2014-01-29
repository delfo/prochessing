class Moves {
  // Some variables
  private IntList m;
  // A constructor
  
  // Some functions
  Moves(){
    m = new IntList();
  }
  
  void add(int newm){
    m.append(newm);
  }
  // Display the shape!
  void display() {
    if (m.size()%2 != 0)
          fill=0;
         else
           fill=255;
    for (int i = m.size(); i > 0; i = i-1) {
      setfill();
      fill(fill);
      println(i);
      ellipse(width/2, height/2, m.get(i-1), m.get(i-1));
      
    } 
     
    println(m);
  }
}
}

