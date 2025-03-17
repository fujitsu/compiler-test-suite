#include <stdio.h>
unsigned long    *ulongp;
unsigned char    *ucharp;

void sub(){
   *ulongp = 10;
   *ucharp = 2;
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double ulongwork = 2;
   ulongp = (unsigned long *)&ulongwork;
   ucharp = (unsigned char *)&ulongwork;
   sub();
}
