#include <iostream>
using namespace std;

struct A {
  int a;
  void func(){ a ++; }
  void (A::*mpf)();
  A() { a = 0; mpf = &A::func; }
};
int main()
{
  A aobj;

  (aobj.*(aobj.mpf))();
  if (aobj.a == 1)
    cout << "ok\n";
  else
    cout << "ng\n";
}
