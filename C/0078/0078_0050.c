#include <stdio.h>

double selectge(double  a,double  b,double t1)
{
  double t2;
  if( a < b ) {
    t2 = 0;
  }
  else {
    t2 = t1;
  }
  return t2;
}
int main()
{
   printf("%d %g\n", 1,selectge( 0.0 , 0.0, 1.0 ));
   printf("%d %g\n", 1,selectge( 1.0 , 0.0, 1.0 ));
   printf("%d %g\n", 0,selectge( 0.0 , 1.0, 1.0 ));
   printf("%d %g\n", 1,selectge( 1.0 , 1.0, 1.0 ));
   printf("%d %g\n", 0,selectge( -1.0 ,  0.0, 1.0 ));
   printf("%d %g\n", 1,selectge(  0.0 , -1.0, 1.0 ));
   printf("%d %g\n", 1,selectge( -1.0 , -1.0, 1.0 ));
   printf("%d %g\n", 0,selectge( -1.0 ,  1.0, 1.0 ));
   printf("%d %g\n", 1,selectge(  1.0 , -1.0, 1.0 ));
}
