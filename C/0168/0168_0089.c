#include <stdio.h>
unsigned long    **ulongp;
unsigned char    **ucharp;

void sub(){
   **ulongp = 10;
   **ucharp = 2;
   **ulongp = **ulongp + 3;

   if(**ulongp == 13 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double ulongwork = 2;
   unsigned long *ulongworkp = (unsigned long *)&ulongwork;
   ulongp = &ulongworkp;
   ucharp = (unsigned char **)&ulongworkp;

   sub();
}
