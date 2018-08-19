class Room{
 string desc;
 string name;
 int id;
 static int nextid;
 string[] path;

 this(string desc, string name, string[] path){
  this.desc = desc;
  this.name = name;
  this.path = path;
  this.id = nextid;
  nextid++;

 }
}

class Player
{
 Room local;

 this(Room local)
 {
  this.local = local;
 }
}

string adjective[] = ["tight", "dusty", "bloody", "hot", "cold"];
string color[] = ["grey", "brown", "black", "blue", "green", "white"];
Room[string] roomdict;
Room roomtemp;

void main(string[] args){

roomtemp = new Room("A dusty grey room.", "grey", ["black"]);
roomdict[roomtemp.name] = roomtemp;
roomtemp = new Room("A generic brown room.", "brown", ["black"]);
roomdict[roomtemp.name] = roomtemp;
roomtemp = new Room("An old black room.", "black", ["grey", "brown"]);
roomdict[roomtemp.name] = roomtemp;

import std.stdio;
Player me = new Player(roomtemp);
writeln(me.local.desc,"\n",me.local.path,"\n");
import std.string;

while(true){
 me.local = roomdict[strip(readln())];
 writeln(me.local.desc,"\n", me.local.path,"\n");
}
}
