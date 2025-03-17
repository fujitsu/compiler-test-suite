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
   long double uintwork = 2;
   uintp = (unsigned int *)&uintwork;
   ucharp = (unsigned char *)&uintwork;
   sub();
}
