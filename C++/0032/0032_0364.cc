



#include <iostream>
using namespace std;

struct __mptr {
  short adjust;
  short index;
  void (*fp)();
};

struct A {
  int a;
  int b;
  int c;
  void func(){ a++; b++; c++; }
  A(){ a = 1; b = 2; c = 3; }
};

typedef int A::*MP;
typedef void (A::*MPF)();
int main()
{
  MP *mp = new (int A::*);
  MPF *mpf = new (void (A::*)());
  A aobj;

  *mp = &A::b;
  *mpf = &A::func;
  (aobj.*(*mpf))();
  if (aobj.a == 2 && aobj.*(*mp) == 3 && aobj.c == 4)
    cout << "ok\n";
  else
    cout << "ng\n";

  delete mp;
  delete mpf;
}

  
