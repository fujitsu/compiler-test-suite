#include <stdio.h>
unsigned long    *ulongp;
unsigned char    *ucharp;

void sub(){
   *ulongp = 10;
   *ucharp = 2;
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long ulongwork[5] = {1,2,3,4,5};
   ulongp = ulongwork;
   ucharp = (unsigned char *)ulongwork;

   sub();
}
