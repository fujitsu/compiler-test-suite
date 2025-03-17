#include <iostream>
using namespace std;

struct A {
  int a;
  void func(){ cout << "ok\n" ; }
};
int main()
{
  int i,j;
  A aobj;
  void (A::*mpf)()=&A::func;

  (aobj.*(i,j,mpf))();
}
  
