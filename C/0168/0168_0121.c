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
   float floatwork[5] = {1.0,2.0,3.0,4.0,5.0};
   floatp = floatwork;
   scharp = (signed char *)floatwork;

   sub(floatp,scharp);
}
