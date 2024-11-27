#include <stdio.h>
void test(
long double q0,
long double q1,
long double q2,
long double q3,
long double q4,
long double q5,
long double q6,
long double q7,
long double q8
)
{
  long double q = q0+q1+q2+q3+q4+q5+q6+q7+q8;
  if( q == 1+2+3+4+5+6+7+8 ) {
    puts("OK1");
  }
  else {
    printf("NG1 %ld\n",q);
  }
}
int main()
{
   test(0,1,2,3,4,5,6,7,8);
}

