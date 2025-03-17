#include <stdio.h>
void sub(unsigned short *ushortp, float *floatp){
   *ushortp = 10;
   *floatp = 5.0;
   *ushortp = *ushortp + 3;

   if(*ushortp == 13 && *floatp == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned short *ushortp;
   float *floatp;
   long double floatwork = 2.0;
   ushortp = (unsigned short *)&floatwork;
   floatp = (float *)&floatwork;
   sub(ushortp,floatp);
}
