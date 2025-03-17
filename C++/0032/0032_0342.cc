








#include <iostream>
using namespace std;

short func()
{
  return 1;
}

char c;
char &func2()
{
  return c;
}
int main()
{
  short (&fr)() = func;
  char &(&fr2)() = func2;

  if ( sizeof ( fr() ) == sizeof (short)  &&
       sizeof ( fr2() ) == sizeof (char&)) {
    cout << "ok\n";
  }
  else {
    cout << "ng\n";
    cout << sizeof( fr2() ) << "\n";
    cout << sizeof( char& ) << "\n";
  }
}
