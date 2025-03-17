#include <stdio.h>
void sub(int *intp, double *doublep){
   *intp = 10;
   *doublep = 5.0;
   *intp = *intp + 3;

   if(*intp == 13 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   double *doublep;
   double doublework[5] = {1.0,2.0,3.0,4.0,5.0};
   intp = (int *)doublework;
   doublep = doublework;

   sub(intp,doublep);
}
