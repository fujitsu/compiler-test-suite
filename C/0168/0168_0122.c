#include <stdio.h>
#include <string.h>
void sub(float *floatp, signed char *scharp){
   *floatp = 10.0;
   strcpy(scharp,"cd");
   *floatp = *floatp + 3.0;

   if(*floatp == 13.0 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   float *floatp;
   signed char *scharp;
   long double floatwork = 2.0;
   floatp = (float *)&floatwork;
   scharp = (signed char *)&floatwork;
   sub(floatp,scharp);
}
