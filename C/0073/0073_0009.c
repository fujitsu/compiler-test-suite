#include <stdio.h>

void init();
double x[1001+1],  
       y[1001+1],
       z[1001+1];
int main()
{
       double q,r,t,sum;
       int    dummy_loop,k,sum1;

       init();

       q = 1.0;
       r = 4.86;
       t = 276.0;
       for( dummy_loop=1; dummy_loop <= 250000; dummy_loop++){
         for(k=1; k <= 400; k++ ) {
            x[k] = q+y[ k ]*(r*z[k+10]+t*z[k+11]);
         }
       }
       sum = 0.0;
       for(k=1; k <= 400; k++){
          sum = sum + x[k];
       }
       sum1 = (int)sum;
       if( sum1 == 167060 )
         printf("OK \n");
       else
         printf("NG \n");
}
void init()
{
       int k;
       for(k=1;k<=1000;k++) {
         x[k] = 1.11 ;
         y[k] = 1.123 ;
         z[k] = 1.321 ;
       }
}
