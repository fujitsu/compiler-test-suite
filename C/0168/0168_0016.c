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
   long double floatwork = 2.0;
   floatp = (float *)&floatwork;
   charp = (char *)&floatwork;
   sub();
}
