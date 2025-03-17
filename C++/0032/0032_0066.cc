#include <stdio.h>
typedef const volatile long double LD;
void g(volatile long double d1, LD d2);
int main()
{
  long double d1 = 1.0;
  LD          d2 = 2.0;
  g(d1,d2);
}


void g(volatile long double d1, LD d2)
{
  if (d1 == 1.0 && d2 == 2.0) {
    printf("ok\n");
  }
  else
    printf("ng %ld\n",d1);
}
