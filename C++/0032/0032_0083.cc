#include <iostream>
using namespace std;

struct B {
  operator int&(){ cout << "ok\n"; return b;}
  int b;
}bobj;
int main()
{
  (int&)bobj;
}
