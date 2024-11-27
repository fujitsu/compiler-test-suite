#include <stdio.h>

unsigned int selecteq(unsigned int a,unsigned int b,unsigned int t1)
{
  unsigned t2;
  if( a != b ) {
    t2 = t1;
  }
  else {
    t2 = 0;
  }
  return t2;
}
int main()
{
   printf("%d %d\n", 0,selecteq( 0 , 0, 1 ));
   printf("%d %d\n", 1,selecteq( 1 , 0, 1 ));
   printf("%d %d\n", 1,selecteq( 0 , 1, 1 ));
   printf("%d %d\n", 0,selecteq( 1 , 1, 1 ));
   printf("%d %d\n", 1,selecteq( -1 ,  0, 1 ));
   printf("%d %d\n", 1,selecteq(  0 , -1, 1 ));
   printf("%d %d\n", 0,selecteq( -1 , -1, 1 ));
   printf("%d %d\n", 1,selecteq( -1 ,  1, 1 ));
   printf("%d %d\n", 1,selecteq(  1 , -1, 1 ));
}
