#include <stdio.h>
void sub(short *shortp, long double *ldoublep){
   *shortp = 10;
   *ldoublep = 5.0;
   *shortp = *shortp + 3;

   if(*shortp == 13 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   short *shortp;
   long double *ldoublep;
   long double ldoublework = 2.0;
   shortp = (short *)&ldoublework;
   ldoublep = (long double *)&ldoublework;
   sub(shortp,ldoublep);
}
