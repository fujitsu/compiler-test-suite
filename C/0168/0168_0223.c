#include <stdio.h>
void sub(unsigned long *ulongp, float *floatp){
   *ulongp = 10;
   *floatp = 5.0;
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && *floatp == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long *ulongp;
   float *floatp;
   long double ulongwork = 2;
   ulongp = (unsigned long *)&ulongwork;
   floatp = (float *)&ulongwork;
   sub(ulongp,floatp);
}
