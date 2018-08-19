import std.stdio;
import std.range;


struct Terrain{
 string name = "generic";
 bool isTraversable;
 bool isBuildable;
 bool isDiggable;
}

struct Feature{ // Features are immobile  natural objects that take up tile space such as mountains, mineral deposits, and trees.
 string name = "generic"
 bool isTraversable;
 bool isBuildable;
 bool isMineable;
}

struct Unit{
 string name = "generic";
 bool canAttack;
 bool canMine;
 int health;
 int damage;
}

struct Structure{
 string name = "generic";
 bool canBuild;
 

}

struct Tile{ // Tiles contain the land type, any special features, and any unit or buildings
 Terrain terrain;
 Placeable placeable;
 
}

Terrain Dirt = {"Dirt",true, true, true};
Terrain Water = {"Water", false, false, false};
Terrain Stone = {"Stone", true, true, false};
Terrain Sand = {"Sand", true, false, true};

Terrain Map[16][16];

void MapGen(Terrain land){
 
 int Y_tracker = 0;
 int X_tracker = 0; 

 while(Y_tracker < Map.length){
  while(X_tracker < Map.length){
  
   Map[Y_tracker][X_tracker] = land;
   writeln(Map[Y_tracker][X_tracker].name);
   X_tracker++;
  }
  Y_tracker++;
  X_tracker = 0;
 }
Y_tracker = 0;
X_tracker = 0;
}

/*void MapPrint(){
 foreach(uint i, uint n;  Map){
 writeln(Map[i][n]);
 }
}
*/

void main(){
MapGen(Dirt);

// MapPrint();
}
