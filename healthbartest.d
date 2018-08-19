import std.stdio;
import std.string;
import std.conv;

string healthbar(int total, int current)
{ 
  string[] denom = ["-", "\\", "|", "/", "*"];

  int ticks = 40;
  double increment = total * 0.025; //writefln("Increment: %s", increment);
  int damage = total - current; //writefln("Damage : %d", damage);
  string bar = "[";

  import std.math : floor;
  ticks -= floor(damage/increment); //writefln("Ticks: %d", ticks);

  for(int i = 1; i <= 10; i++)
  {
    if(ticks - 4 >= 0)
    {
      ticks -= 4; //writefln("Ticks: %d", ticks);
      bar ~= denom[4];
    }
    else
    {
      bar ~= denom[ticks];
      ticks -= ticks; //writefln("Ticks: %d", ticks);
    }
  }

  return format("%s] %d/%d", bar, current, total); 
}

void main(string args[])
{import std.stdio : writeln;

 writeln(healthbar(to!int(args[1]), to!int(args[2])));
}
