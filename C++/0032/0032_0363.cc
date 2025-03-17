



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
  void func(){}
  A(){ a = 1; b = 2; c = 3; }
};

int main()
{
  int A::*mp = &A::a;
  void (A::*mpf)() = &A::func;

  if (sizeof (mp) == sizeof (int*) &&
      sizeof (mpf) == sizeof (__mptr) &&
      sizeof (int A::*) == sizeof (int*) &&
      sizeof (void (A::*)()) == sizeof (__mptr) &&
      sizeof (&A::a) == sizeof (int*) &&
      sizeof (&A::func) == sizeof (__mptr))
    cout << "ok\n";
  else
    cout << "ng\n";
}

  
