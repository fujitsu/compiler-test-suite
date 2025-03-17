#include <stdio.h>
void sub(unsigned int *uintp, long double *ldoublep){
   *uintp = 10;
   *ldoublep = 5.0;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   long double *ldoublep;
   long double ldoublework = 2.0;
   uintp = (unsigned int *)&ldoublework;
   ldoublep = (long double *)&ldoublework;
   sub(uintp,ldoublep);
}
