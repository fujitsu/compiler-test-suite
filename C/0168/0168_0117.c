#include <stdio.h>
void sub(float *floatp, double *doublep){
   *floatp = 10.0;
   *doublep = 5.0;
   *floatp = *floatp + 3.0;

   if(*floatp == 13.0 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   float *floatp;
   double *doublep;
   double doublework[5] = {1.0,2.0,3.0,4.0,5.0};
   floatp = (float *)doublework;
   doublep = doublework;

   sub(floatp,doublep);
}
