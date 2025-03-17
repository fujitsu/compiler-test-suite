#include <stdio.h>
void sub(unsigned short *ushortp, long double *ldoublep){
   *ushortp = 10;
   *ldoublep = 5.0;
   *ushortp = *ushortp + 3;

   if(*ushortp == 13 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned short *ushortp;
   long double *ldoublep;
   long double ldoublework = 2.0;
   ushortp = (unsigned short *)&ldoublework;
   ldoublep = (long double *)&ldoublework;
   sub(ushortp,ldoublep);
}
