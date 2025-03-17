#include <stdio.h>
void sub(unsigned long *ulongp, long double *ldoublep){
   *ulongp = 10;
   *ldoublep = 5.0;
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long *ulongp;
   long double *ldoublep;
   long double ldoublework[5] = {1.0,2.0,3.0,4.0,5.0};
   ulongp = (unsigned long *)ldoublework;
   ldoublep = ldoublework;

   sub(ulongp,ldoublep);
}
