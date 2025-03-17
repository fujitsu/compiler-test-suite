#include <stdio.h>
unsigned int    *uintp;
unsigned char    *ucharp;

void sub(){
   *uintp = 10;
   *ucharp = 2;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int uintwork[5] = {1,2,3,4,5};
   uintp = uintwork;
   ucharp = (unsigned char *)uintwork;

   sub();
}
