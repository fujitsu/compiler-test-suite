#include <stdio.h>
void sub(long *longp, long double *ldoublep){
   *longp = 10;
   *ldoublep = 5.0;
   *longp = *longp + 3;

   if(*longp == 13 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long *longp;
   long double *ldoublep;
   long double ldoublework = 2.0;
   longp = (long *)&ldoublework;
   ldoublep = (long double *)&ldoublework;
   sub(longp,ldoublep);
}
