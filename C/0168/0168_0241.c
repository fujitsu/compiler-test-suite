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
   long double ldoublework[5] = {1.0,2.0,3.0,4.0,5.0};
   ushortp = (unsigned short *)ldoublework;
   ldoublep = ldoublework;

   sub(ushortp,ldoublep);
}
