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
   long double ulongwork = 2;
   ulongp = (unsigned long *)&ulongwork;
   ushortp = (unsigned short *)&ulongwork;
   sub(ulongp,ushortp);
}
