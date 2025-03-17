#include <stdio.h>
class A {
 public:
  int a;
          void func(int){}
  virtual void vfunc(){}
};

void xxx( void (A::*mpf)(int) ){;}
void yyy( void (A::*mpf)() ){;}
int main()
{
  xxx ( &A::func );
  yyy ( &A::vfunc );
  printf("ok\n");
}
