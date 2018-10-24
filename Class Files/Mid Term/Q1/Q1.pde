import com.sun.javafx.logging.PrintLogger.Counter;
// Fix all the syntax errors so the code runs.
int counter = 2;

void setup(){

  String welcomeMsg = "welcome to the first midterm question!";
  
  bool isCodeGreat = true;
  
  println(welcomeMsg);
  
  println('now we'll do a loop and print the iterating value!');
  for(int i = 0; i++; i < 3){
    println("this is loop number ");
  }
  flaot floatArray = new float[100];
  println("there are " + floatArray.size() + " positions in floatArray");
}

void draw(){
  // we'll increment counter every frame until 60, then reset
  if(0 < counter < 60){
    counter+;
  }
  else{ 
    counter = 0;
  }
}
