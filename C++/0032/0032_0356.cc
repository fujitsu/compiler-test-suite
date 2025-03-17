






#include <iostream>
using namespace std;

union A {
  int b;
  int a;
  A() { b = 1; a = 10; }
};

int A::*mp;
int main()
{
  A aobj;
  A &r = aobj;

  mp = &A::b;
  r.*mp += 10;
  mp = &A::a;
  r.*mp += 10;
  if (aobj.a == 30 && r.b == 30 && &A::b == &A::a)
    cout << "ok\n";
  else
    cout << "ng\n";
}
