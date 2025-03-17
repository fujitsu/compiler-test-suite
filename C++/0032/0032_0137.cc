






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

T mp=&A::a;
TT mpf=&A::func;
  
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
  T mp_local=0;
  TT mpf_local=0;
  
  aobj.*(mp_local = func_mp()) = 1;
  if (aobj.a == 1) {
    (aobj.*(mpf_local = func_mpf()))();
  }
  else
    cout << "ng\n";
}
