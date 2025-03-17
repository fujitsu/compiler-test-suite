






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

  func_mp() = &A::a;
  aobj.*mp = 1;
  if (aobj.a == 1) {
    func_mpf() = &A::func;
    (aobj.*mpf)();
  }
  else
    cout << "ng\n";
}
