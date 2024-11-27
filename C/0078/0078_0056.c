#include <stdio.h>


void test(float f)
{
  if( f == 1.0 ) {
    puts("OK1");
  }
  else {
    puts("NG1");
  }
}

void testk(f)
float f;
{
  if( f == 1.0 ) {
    puts("OK2");
  }
  else {
    puts("NG2");
  }
}
int main()
{
   test(1.0);
   testk(1.0);
}

