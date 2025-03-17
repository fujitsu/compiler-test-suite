#include <stdio.h>
void sub(float *floatp, long double *ldoublep){
   *floatp = 10.0;
   *ldoublep = 5.0;
   *floatp = *floatp + 3.0;

   if(*floatp == 13.0 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   float *floatp;
   long double *ldoublep;
   long double ldoublework[5] = {1.0,2.0,3.0,4.0,5.0};
   floatp = (float *)ldoublework;
   ldoublep = ldoublework;

   sub(floatp,ldoublep);
}
