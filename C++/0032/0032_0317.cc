#include <stdio.h>
class A {
 public:
  int mem;
  int func() { if (mem==10) return 1;
		else        return 0;
	      }
}aobj;
int main()
{
  int (A::*mpf)() = 0;
  int A::*mp = 0;
  int a=20;
  int &r=a;
  const int &r2 = 30;

  mpf = &A::func;
  mp = &A::mem;
  aobj.*mp = 10;
  if ((aobj.*mpf)()==1 && r==20 && r2==30)
    printf("ok\n");
  else
    printf("ng\n");

}
