#include <stdio.h>
void test(
long double q0,
long double q1,
long double q2,
long double q3
)
{
  long double q = q0+q1+q2+q3;
  if( q == 1+2+3 ) {
    puts("OK1");
  }
  else {
    printf("NG1 %ld\n",q);
  }
}
int main()
{
   test(0,1,2,3);
}

