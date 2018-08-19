import std.stdio;
import std.string;
import std.conv;

struct player
{
 ubyte[2] location = [0,0];

 void move(ubyte x,ubyte y)
 {
  this.location[0] += x;
  this.location[1] += y;
 }

}

void main()
{
 player you;
 ubyte[2] input = readf("%s,%s", [0],[1]);
 you.move(input[0],input[1]);
 writeln(you.location);
}
