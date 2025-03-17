






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

T mp = &A::a;
TT mpf = &A::func;
  
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

  func_mp() = 0;
  func_mpf() = 0;
  if (mp == 0 && mpf == 0)
    cout << "ok\n";
  else
    cout << "ng\n";
}
