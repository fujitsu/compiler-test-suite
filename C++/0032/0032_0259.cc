#include <iostream>
using namespace std;

struct X {
  int x,y,z;
};

struct A {
  int a;
  char b;
  X x;
  void func(){}
};
int main()
{
  int A::*mpa;
  char A::*mpb;
  X A::*mpx;
  void (A::*mpf)();
  A aobj, *p;

#if LONG64 || defined(__aarch64__) || defined(_LP64)
  if (sizeof (aobj.*mpa) == 4 &&
      sizeof (aobj.*mpb) == 1 &&
      sizeof (aobj.*mpx) == 12 &&
      sizeof (p->*mpa) == 4 &&
      sizeof (p->*mpb) == 1 &&
      sizeof (p->*mpx) == 12 &&
      sizeof(mpb) == 8 &&
      sizeof(mpx) == 8 &&
      sizeof(mpf) == 16)
#else
  if (sizeof (aobj.*mpa) == 4 &&
      sizeof (aobj.*mpb) == 1 &&
      sizeof (aobj.*mpx) == 12 &&
      sizeof (p->*mpa) == 4 &&
      sizeof (p->*mpb) == 1 &&
      sizeof (p->*mpx) == 12 &&
      sizeof(mpb) == 4 &&
      sizeof(mpx) == 4 &&
      sizeof(mpf) == 8)
#endif
    cout << "ok" << endl;
  else {
    cout << "ng" << endl;
    cout << sizeof (aobj.*mpa) << endl;
    cout << sizeof (aobj.*mpb) << endl;
    cout << sizeof (aobj.*mpx)  << endl;
    cout << sizeof (p->*mpa)  << endl;
    cout << sizeof (p->*mpb)  << endl;
    cout << sizeof (p->*mpx)  << endl;
    cout << sizeof(mpb)  << endl;
    cout << sizeof(mpx)  << endl;
    cout << sizeof(mpf)  << endl;
  }
}
