import std.stdio, std.algorithm, std.range;

void main(){
auto file1 = File("testfile", "r");
auto tmp = file1.byLine(Yes.keepTerminator);
writeln(tmp); 


/*
 for(; !tmp.empty; tmp.popFront()){
  writeln(tmp.front);
 }
*/
}

