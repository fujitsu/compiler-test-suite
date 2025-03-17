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
   long double doublework = 2.0;
   shortp = (short *)&doublework;
   doublep = (double *)&doublework;
   sub(shortp,doublep);
}
