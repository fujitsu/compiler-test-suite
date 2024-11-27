
#include<stdio.h>
#include<math.h>
#include<complex.h>

int main() {
   float complex z = atanf(1.0) * I;
   float complex ds = csinf(z);
   float complex dc = ccosf(z);
   float complex dt = ctanf(z);
   float t=dt-ds/dc;

   if (t == 0.0) printf("*OK* \n");
   else          printf("*NG* \n");

   fflush(stdout);

   return 0;
}
