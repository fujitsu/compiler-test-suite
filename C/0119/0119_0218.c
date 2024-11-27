#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
       int i,j,k,l=1,m,a[10],b[10],c[10];
       int sum1,sum2,sum3;

       sum1=1;
       sum2=2;
       sum3=3;
       for(i=0; i <= 9 ; i++){
             if((i%2) == 0){
                   a[i] = i;
                   b[i] = 2;
             }
             else{
                   a[i] = 2;
                   b[i] = i;
             }
             c[i] = a[i]-b[i];
       }
       for(j=0; j <= 9 ; j++){
              k = a[j];
              i = b[j];
              sum1 = sum1 >> k;
              sum2 = sum2 >> l;
              m = c[i] - (k+l);
              if(m >= 0 )
                   sum3 = sum3 >> m;
       }
       if(sum1 == 0 && sum2 == 0 && sum3 == 3)
                   printf(" test ==> ok\n");
       else        printf(" test ==> ng\n");
exit (0);
}
