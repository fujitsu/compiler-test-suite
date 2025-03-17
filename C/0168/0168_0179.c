#include <stdio.h>
void sub(short *shortp, double *doublep){
   *shortp = 10;
   *doublep = 5.0;
   *shortp = *shortp + 3;

   if(*shortp == 13 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   short *shortp;
   double *doublep;
   double doublework[5] = {1.0,2.0,3.0,4.0,5.0};
   shortp = (short *)doublework;
   doublep = doublework;

   sub(shortp,doublep);
}
