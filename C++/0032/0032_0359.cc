







#include <iostream>
using namespace std;

union A {
  int a;
  int b;
  void func() { a++; }
  A(){ a = 0; }
};

typedef void (A::*MP)();
int main()
{
  int i = 0;
  int &r = i;
  MP mp = &A::func;
  MP *mpp = &mp;
  A aobj;
  A &ra = aobj;

  (aobj.*mp)();
  (aobj.*(*mpp))();
  (aobj.*(&A::func))(); 
  (aobj.*(&A::func))();

  if (aobj.a == 4 && aobj.b == 4)
    cout << "ok\n";
  else
    cout << "ng\n";
}

  
  

  
