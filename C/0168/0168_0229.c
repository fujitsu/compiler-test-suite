#include <stdio.h>
void sub(unsigned long *ulongp, short *shortp){
   *ulongp = 10;
   *shortp = 5;
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && *shortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long *ulongp;
   short *shortp;
   unsigned long ulongwork[5] = {1,2,3,4,5};
   ulongp = ulongwork;
   shortp = (short *)ulongwork;

   sub(ulongp,shortp);
}
