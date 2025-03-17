






#include <iostream>
using namespace std;

struct A {
  int b;
  int a;
  void func() {  }
  A(){ a = 0; }
};

typedef int A::*T;
typedef void (A::*TT)();

T mp=0;
TT mpf=0;

int func_mp_call;
int func_mpf_call;
  
T &func_mp()
{
  func_mp_call ++;
  return mp;
}

TT &func_mpf()
{
  func_mpf_call ++;
  return mpf;
}
int main()
{
  A aobj;

  func_mp() = &A::a;
  func_mpf() = &A::func;

  if (func_mp_call == 1 && func_mpf_call == 1)
    cout << "ok\n";
  else
    cout << "ng " << func_mp_call << ' ' << func_mpf_call << '\n';
}
