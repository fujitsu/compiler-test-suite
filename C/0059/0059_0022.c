#include<stdio.h>
#include<math.h>
#include<complex.h>

int main() {
   long double complex z = atanl(1) * I;
   long double complex ds = csinl(z);
   long double complex dc = ccosl(z);
   long double complex dt = ctanl(z);
   long double t=dt-ds/dc;

   if( t==0.0 ) printf("*OK* \n");
   else         printf("*NG* %10.5e \n",t);

   fflush(stdout);
   return 0;
}
