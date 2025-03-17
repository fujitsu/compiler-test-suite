#include <iostream>
using namespace std;

struct A {
  int a;
  int b;
  void func() { a ++; }
  A(){ a = 0; }
  void sub()
    {
      A::func();
    }
};
int main()
{
  A aobj;
  
  aobj.sub();
  if (aobj.a == 1)
    cout << "ok\n";
  else
    cout << "ng " << aobj.a << '\n';
}
