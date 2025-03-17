#include <stdio.h>
void sub(int *intp, short *shortp){
   *intp = 10;
   *shortp = 5;
   *intp = *intp + 3;

   if(*intp == 13 && *shortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   short *shortp;
   int intwork[5] = {1,2,3,4,5};
   intp = intwork;
   shortp = (short *)intwork;

   sub(intp,shortp);
}
