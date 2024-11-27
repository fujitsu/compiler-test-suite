#include <stdio.h>
void test(
float f0,
float f1
)
{
  float f = f0+f1;
  if( f == 3 ) {
    puts("OK1");
  }
  else {
    printf("NG1 %g\n",f);
  }
}
int main()
{
   test(1,2);
}

