
















#include <stdio.h>
int main()
{
  struct A {
    int i1;
    struct B { int i2; } b;
    void set(int i) { i1 = b.i2 = i; }
  };

  A a, *ap= &a;
  
  a.set(0);
  a.b.i2++;
  ap->b.i2++;

  if ( a.b.i2 == 2 )
    printf("ok\n");
  else
    printf("ng\n"); 
}
