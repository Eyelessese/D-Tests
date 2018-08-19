import std.stdio, std.conv;
// import userinput;

string builder(string[] list){
 string msg;
 int counter = 1;
 foreach(i, element; list){
  msg ~= to!string(counter);
  msg ~= ": ";
  msg ~= element;
  msg ~= "\n";
  counter++;
 }
 return msg;
}

void MainMenu(){
 string[] menu = ["New Game", "Load Game", "Options", "Quit"];
 writeln(builder(menu));
}

void NewGame(){
 string msg = "You started a new game!";
 writeln(msg);
}
void LoadGame(){
 string msg = "Which game would you like to laod?";
 writeln(msg); 
}

void Options(){
 string msg = "Change game options";
 writeln(msg);
}

void main(){
 MainMenu();
}
