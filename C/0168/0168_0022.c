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
   long double floatwork = 2.0;
   floatp = (float *)&floatwork;
   ucharp = (unsigned char *)&floatwork;
   sub();
}
