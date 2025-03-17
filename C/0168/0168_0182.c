#include <stdio.h>
void sub(short *shortp, float *floatp){
   *shortp = 10;
   *floatp = 5.0;
   *shortp = *shortp + 3;

   if(*shortp == 13 && *floatp == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   short *shortp;
   float *floatp;
   long double floatwork = 2.0;
   shortp = (short *)&floatwork;
   floatp = (float *)&floatwork;
   sub(shortp,floatp);
}
