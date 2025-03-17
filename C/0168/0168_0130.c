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
   float floatwork[5] = {1.0,2.0,3.0,4.0,5.0};
   intp = (int *)floatwork;
   floatp = floatwork;

   sub(intp,floatp);
}
