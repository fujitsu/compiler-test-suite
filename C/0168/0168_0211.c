#include <stdio.h>
void sub(unsigned int *uintp, unsigned long *ulongp){
   *uintp = 10;
   *ulongp = 5;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *ulongp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   unsigned long *ulongp;
   unsigned long ulongwork[5] = {1,2,3,4,5};
   uintp = (unsigned int *)ulongwork;
   ulongp = ulongwork;

   sub(uintp,ulongp);
}
