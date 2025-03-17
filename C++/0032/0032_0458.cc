#include <iostream>
using namespace std;

int _g=0;
int _f=0;
int _f2=0;
struct A {
  static void g() { _g++;  }
  static int s;
}a,*p;
int A::s=0;

A *f()
{
  _f++;
  
  return p;
}

A f2()
{
  _f2++;
  
  return a;
}
int main()
{
  f()->g();
  f()->s=10;
  f2().g();
  f2().s=10;
  
  if (_f == 2 && _g == 2 && _f2 == 2)
    cout << "ok" << endl;
  else
    cout << "ng" << endl;
}
