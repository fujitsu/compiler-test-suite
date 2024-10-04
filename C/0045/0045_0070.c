#include <stdio.h>

unsigned long long ucount ;

void test(void)
{
  unsigned int i;
  for(i=0; i < 0xffffff9c; i += 0x7ffffffe) {
    ucount ++;
  }
}
int main()
{
  ucount = 0 ;
  test();
  if( ucount == 2 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

