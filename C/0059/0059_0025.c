
#include<stdio.h>
#include<math.h>
#include<complex.h>

int main() {
   float    complex   z  = atan(1) * I;
   float    _r,_i;
   float    zr,zi;

   _r = __real__ z;
   _i = __imag__ z;

   zr = crealf(z)  ;
   zi = cimagf(z)  ;

   if(_r == zr)        printf("*OK1 \n");
   else                printf("*NG1 \n");
  
   if(_i == zi)        printf("*OK2 \n");
   else                printf("*NG2 \n");
  
   fflush(stdout);
   return 0;
}
