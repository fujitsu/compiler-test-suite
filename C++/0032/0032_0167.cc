#include <iostream>
using namespace std;

struct X { int i; int j:4; } x0;
struct Y { operator X&() { return x0; } } y;
int main()
{
  x0.j = 0x01;
  const X& x = y;
        X& xx = y;
  x0.j += 0x02;
  xx.j += 0x04;

  if (x.j == 0x07 && x0.j == 0x07 && xx.j == 0x07)
    cout << "ok\n";
  else
    cout << "ng\n";
}
