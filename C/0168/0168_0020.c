#include <stdio.h>
#include <string.h>
float    **floatp;
signed char    **scharp;

void sub(){
   **floatp = 10.0;
   strcpy(*scharp,"cd");
   **floatp = **floatp + 3.0;

   if(**floatp == 13.0 && strcmp(*scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double floatwork = 2.0;
   float *floatworkp = (float *)&floatwork;
   floatp = &floatworkp;
   scharp = (signed char **)&floatworkp;

   sub();
}
