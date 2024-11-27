#include <stdio.h>

unsigned int selectlt(unsigned int a,unsigned int b,unsigned int t1)
{
  unsigned t2;
  if( a >= b ) {
    t2 = 0;
  }
  else {
    t2 = t1;
  }
  return t2;
}
int main()
{
   printf("%d %d\n", 0,selectlt( 0 , 0, 1 ));
   printf("%d %d\n", 0,selectlt( 1 , 0, 1 ));
   printf("%d %d\n", 1,selectlt( 0 , 1, 1 ));
   printf("%d %d\n", 0,selectlt( 1 , 1, 1 ));
   printf("%d %d\n", 0,selectlt( -1 ,  0, 1 ));
   printf("%d %d\n", 1,selectlt(  0 , -1, 1 ));
   printf("%d %d\n", 0,selectlt( -1 , -1, 1 ));
   printf("%d %d\n", 0,selectlt( -1 ,  1, 1 ));
   printf("%d %d\n", 1,selectlt(  1 , -1, 1 ));
}
