#include <stdio.h>
#include <math.h>

static int ng = 0;

int xx(double x,double (*c)(double ),double (*f)(double ))
{
   if(ceil(x)!=c(x)) ng = 1;
   if(floor(x)!=f(x)) ng = 1;
}
int main()
{
   volatile double x ;
   for( x = -100; x < 100.0; x=x+0.1 ) {
      xx(x,ceil,floor);
   }
   for( x = 100; x > -100.0; x=x-0.1 ) {
      xx(x,ceil,floor);
   }
   if( ng ) { 
      puts("NG");
   }
   else {
      puts("OK");
   }
}
