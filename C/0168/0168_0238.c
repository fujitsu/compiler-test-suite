#include <stdio.h>
void sub(unsigned short *ushortp, double *doublep){
   *ushortp = 10;
   *doublep = 5.0;
   *ushortp = *ushortp + 3;

   if(*ushortp == 13 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned short *ushortp;
   double *doublep;
   long double doublework = 2.0;
   ushortp = (unsigned short *)&doublework;
   doublep = (double *)&doublework;
   sub(ushortp,doublep);
}
