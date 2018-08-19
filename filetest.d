import std.stdio;

string f1 = "test.txt";
string f2 = "test2.txt";

void main(){
writeln("Program Start");

writeln("Creating File 1");
File file1 = File(f1, "r");
writeln("Creating File 1 Done");
writeln("Creating File 2");
File file2 = File(f2, "w");
writeln("Creating File 2 Done");

writeln("Writing to File 2");
foreach(string line; lines(file1))
{
 file2.write(line); 
}
writeln("Writing to File 2 Done");

writeln("Closing File 1");
file1.close();
writeln("Closing File 1 Done");

writeln("Closing File 2");
file2.close();
writeln("Closing File 2 Done");

writeln("Opening File 2");
file2.open(f2, "r");
writeln("Opening File 2 Done");

writeln("Reading File 2");
foreach(string line; lines(file2))
{
 write(line);
}
writeln("Reading File 2 Done");

writeln("Closing File 2");
file2.close();
writeln("Closing File 2 Done");
writeln("Exiting Program");
}
