#include <iostream>
using namespace std;

struct X { int i; int j:4; } x0;
struct Y { operator const X&() { return x0; } } y;
int main()
{
  x0.j = 0x01;
  const X& x = y;
  x0.j += 0x02;

  if (x.j == 0x03 && x0.j == 0x03)
    cout << "ok\n";
  else
    cout << "ng\n";
}
