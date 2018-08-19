import std.stdio;
int [128][128] map;

void main(){
 int a = map.length -1;
 int b = 1;
 int xcalc = 0;
 int ycalc = 0;
 while(xcalc <= a){
  while(ycalc <= a){
   map[xcalc][ycalc] = b;
   b++;
   ycalc++;
  }
 xcalc++;
 ycalc = 0;
 }
 xcalc = 0;
 ycalc = 0;
 while(xcalc <= a){ 
  while(ycalc <= a){
   writeln(map[xcalc][ycalc]);
   ycalc++;
  }
  xcalc++;
  ycalc = 0;
 }
xcalc = 0;
ycalc = 0;
}
