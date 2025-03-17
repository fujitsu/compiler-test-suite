#include <stdio.h>
void sub(int *intp, long double *ldoublep){
   *intp = 10;
   *ldoublep = 5.0;
   *intp = *intp + 3;

   if(*intp == 13 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   long double *ldoublep;
   long double ldoublework = 2.0;
   intp = (int *)&ldoublework;
   ldoublep = (long double *)&ldoublework;
   sub(intp,ldoublep);
}
