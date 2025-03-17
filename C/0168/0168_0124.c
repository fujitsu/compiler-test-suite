#include <stdio.h>
void sub(float **floatp, unsigned char **ucharp){
   **floatp = 10.0;
   **ucharp = 2;
   **floatp = **floatp + 3.0;

   if(**floatp == 13.0 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   float **floatp;
   unsigned char **ucharp;
   long double floatwork = 2.0;
   float *floatworkp = (float *)&floatwork;
   floatp = &floatworkp;
   ucharp = (unsigned char **)&floatworkp;

   sub(floatp,ucharp);
}
