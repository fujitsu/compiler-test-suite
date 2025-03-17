#include <stdio.h>
void sub(int *intp, long *longp){
   *intp = 10;
   *longp = 5;
   *intp = *intp + 3;

   if(*intp == 13 && *longp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   long *longp;
   long longwork[5] = {1,2,3,4,5};
   intp = (int *)longwork;
   longp = longwork;

   sub(intp,longp);
}
