
















#include <stdio.h>
int main()
{
  struct A {
    int i1;
    enum E { off, on } e;
    void set(void) { i1 = 0; e = off; }
  };

  A a, *ap= &a;
  
  a.set();
  a.e = ap->on;

  if ( ap->e != a.off && a.e == a.on )
    printf("ok\n");
  else
    printf("ng\n"); 
}
