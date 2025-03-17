
#include <stdio.h>

class  B { 
  public: 
  void mf(){ printf("ok\n"); }
};
void (B::*yy)();
void func(void (B::*x)());
int main()
{
  func( &B::mf );
}

void func(void (B::*x)())
{
  B bobj;
  yy = x;
  (bobj.*yy)();
}
