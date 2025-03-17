#include <stdio.h>
void sub(int *intp, float *floatp){
   *intp = 10;
   *floatp = 5.0;
   *intp = *intp + 3;

   if(*intp == 13 && *floatp == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   float *floatp;
   long double floatwork = 2.0;
   intp = (int *)&floatwork;
   floatp = (float *)&floatwork;
   sub(intp,floatp);
}
