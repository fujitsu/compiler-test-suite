







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
  A *p = &aobj;
  A *&r = p;
  
  r->*(r->mp) += 10;
  r->mp = &A::a;
  r->*(aobj.mp) += 10;
  if (aobj.a == 20 && p->b == 11)
    cout << "ok\n";
  else
    cout << "ng\n";
}
