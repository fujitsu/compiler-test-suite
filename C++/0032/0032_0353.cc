







#include <iostream>
using namespace std;

struct A {
  int b;
  int a;
  int &r;
  int A::*mp;
  A():r(a) { b = 1; a = 10; mp = &A::b; }
};
int main()
{
  A aobj;
  A &r = aobj;
  typedef int A::*MP;
  MP *mpp;
  
  r.*(r.mp) += 10;
  r.mp = &A::a;
  mpp = &r.mp;
  r.*(*mpp) += 10;
  if (aobj.a == 20 && r.b == 11 && aobj.b == 11)
    cout << "ok\n";
  else
    cout << "ng\n";
}
