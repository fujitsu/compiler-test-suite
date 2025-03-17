#include <iostream>
using namespace std;
struct X { int i; int j:4; } x0;
int main()
{
  x0.j = 0x01;

  const int &rj=(char)(short)x0.j;
  x0.j = 0x13;

  if (rj == 0x01 && x0.j == 0x03)
    cout << "ok\n";
  else
    cout << "ng\n";
}
