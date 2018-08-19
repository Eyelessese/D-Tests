struct mob
{
  string name;
  int health;
  int damage;
}

mob createMob()
{import std.stdio;
 import std.conv;
  string tmparray = [];
  File stats = File("assigntest.txt", "r");


  foreach(string line; lines(stats))
  {
    string tmpstring = line;
    tmparray ~= tmpstring;
    writeln(tmparray);
    writeln(tmparray.length);
  }
 import std.string;
 writeln(tmparray[0]);
 writeln(tmparray[1]);
 writeln(tmparray[2]);
 tmparray.split("\n");
 return mob(format("%s",tmparray[0]), cast(int)tmparray[1], cast(int)tmparray[2]);
}

void main()
{import std.stdio;
mob dude = createMob();
writeln(dude.name);
writeln(dude.health);
writeln(dude.damage);
}
