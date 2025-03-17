#include <stdio.h>
#include <string.h>
float    *floatp;
char    *charp;

void sub(){
   *floatp = 10.0;
   strcpy(charp,"cd");
   *floatp = *floatp + 3.0;

   if(*floatp == 13.0 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   float floatwork[5] = {1.0,2.0,3.0,4.0,5.0};
   floatp = floatwork;
   charp = (char *)floatwork;

   sub();
}
