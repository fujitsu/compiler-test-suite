






#include <iostream>
using namespace std;

struct A {
  int b;
  int a;
  void func() { cout << "ok\n" ; }
  A(){ a = 0; }
};

typedef int A::*T;
typedef void (A::*TT)();

T mp=0;
TT mpf=0;
  
T &func_mp()
{
  return mp;
}

TT &func_mpf()
{
  return mpf;
}
int main()
{
  A aobj;

  aobj.*(mp = &A::a) = 1;
  if (aobj.a == 1) {
    (aobj.*(mpf = &A::func))();
  }
  else
    cout << "ng\n";
}
