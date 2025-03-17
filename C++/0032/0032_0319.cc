#include <stdio.h>
struct A {
  int a;
  static const int s;
  struct AA {
    int aa;
    int aa2;
  };
  A(int){}
  A(){}
  operator int(){return 0;}
}aobj;
struct B {
  operator A();
}bobj;








short a1[ sizeof (A::s) ];
short a2[ sizeof A::s ];
short a3[ sizeof (A::AA) ];
short a4[ sizeof (struct A) ];
short a5[ sizeof (A) ];
int main()
{
  if (sizeof (a1) == sizeof(int)*sizeof(short) &&
      sizeof (a2) == sizeof(int)*sizeof(short) &&
      sizeof (a3) == (sizeof(int)*2)*sizeof(short) &&
      sizeof (a4) == sizeof(int)*sizeof(short) &&
      sizeof (a5) == sizeof(int)*sizeof(short))
    printf("ok\n");
  else
    printf("ng %d %d %d %d\n", sizeof(a1), sizeof(a2), sizeof(a3), sizeof(a4));
}
