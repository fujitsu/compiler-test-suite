
#include<stdio.h>
#include<math.h>
#include<complex.h>

int main() {
   double   complex   z  = atan(1) * I;
   double   _r,_i;
   double   zr,zi;

   _r = __real__ z;
   _i = __imag__ z;

   zr = creal(z)  ;
   zi = cimag(z)  ;

   if(_r == zr)        printf("*OK1 \n");
   else                printf("*NG1 \n");
  
   if(_i == zi)        printf("*OK2 \n");
   else                printf("*NG2 \n");
  
   fflush(stdout);
   return 0;
}
