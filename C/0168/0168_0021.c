#include <stdio.h>
float    *floatp;
unsigned char    *ucharp;

void sub(){
   *floatp = 10.0;
   *ucharp = 2;
   *floatp = *floatp + 3.0;

   if(*floatp == 13.0 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   float floatwork[5] = {1.0,2.0,3.0,4.0,5.0};
   floatp = floatwork;
   ucharp = (unsigned char *)floatwork;

   sub();
}
