#include <stdio.h>
void sub(unsigned int *uintp, float *floatp){
   *uintp = 10;
   *floatp = 5.0;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *floatp == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   float *floatp;
   long double floatwork = 2.0;
   uintp = (unsigned int *)&floatwork;
   floatp = (float *)&floatwork;
   sub(uintp,floatp);
}
