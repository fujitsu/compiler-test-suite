







#include <iostream>
using namespace std;

struct A {
  int b;
  int a;
  int &r;
  int A::*mp;
  A():r(a) { b = 1; a = 10; mp = &A::b; }
};

typedef int A::*MP;
MP *mpp;
A aobj;
A &r = aobj;

MP &func()
{
  r.mp = &A::a;
  return r.mp;
}
int main()
{
  r.*(r.mp) += 10;
  r.*(func()) += 10;
  if (aobj.a == 20 && r.b == 11 && aobj.b == 11 && aobj.*(func()) == 20)
    cout << "ok\n";
  else
    cout << "ng\n";
}
