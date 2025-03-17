#include <stdio.h>
void sub(unsigned long *ulongp, unsigned short *ushortp){
   *ulongp = 10;
   *ushortp = 5;
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && *ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long *ulongp;
   unsigned short *ushortp;
   unsigned long ulongwork[5] = {1,2,3,4,5};
   ulongp = ulongwork;
   ushortp = (unsigned short *)ulongwork;

   sub(ulongp,ushortp);
}
