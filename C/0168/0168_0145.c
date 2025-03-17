#include <stdio.h>
void sub(int *intp, unsigned long *ulongp){
   *intp = 10;
   *ulongp = 5;
   *intp = *intp + 3;

   if(*intp == 13 && *ulongp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   unsigned long *ulongp;
   long double ulongwork = 2;
   intp = (int *)&ulongwork;
   ulongp = (unsigned long *)&ulongwork;
   sub(intp,ulongp);
}
