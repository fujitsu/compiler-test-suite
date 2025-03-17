



#include <iostream>
using namespace std;

struct A {
  int a;
  int b;
  void func(){}
  void func2(){ a = 2; }
};
int main()
{
  A aobj;
  int A::*mp0 = 0;
  int A::*mp = &A::a;
  void (A::*mpf0)() = 0;
  void (A::*mpf)() = &A::func;

  mp = (&A::a , &A::b);
  aobj.*mp = 1;

  mpf = (&A::func , &A::func2);
  (aobj.*mpf)();

  if (aobj.a == 2 && aobj.b == 1)
    cout << "ok\n";
  else
    cout << "ng\n";

}
