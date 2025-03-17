






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
T mp2;
TT mpf2;
  
T &func_mp()
{
  return mp;
}

T &func_mp2()
{
  return mp2;
}

TT &func_mpf()
{
  return mpf;
}

TT &func_mpf2()
{
  return mpf2;
}
int main()
{
  A aobj;
  T mp_local=0;
  TT mpf_local=0;
  
  

  aobj.*(func_mp2() = func_mp()) = 1;
  if (aobj.a == 1 && aobj.*mp2 == 1) {
    (aobj.*(func_mpf2() = func_mpf()))();
    (aobj.*mpf2)();
    if (count == 2)
      std::cout << "ok\n";
    else
      std::cout << "ng2 " << count << '\n';
  }
  else
    std::cout << "ng\n";
}
