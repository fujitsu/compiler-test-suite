






#include <iostream>

int count;
struct A {
  int b;
  int a;
  void func() { count++; }
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
  if (aobj.a == 1 && aobj.*mp_local == 1) {
    (aobj.*(mpf_local = func_mpf()))();
    (aobj.*mpf_local)();
    if (count == 2)
      std::cout << "ok\n";
    else
      std::cout << "ng2 " << count << '\n';
  }
  else
    std::cout << "ng\n";
}
