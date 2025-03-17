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
   long double intwork = 2;
   intp = (int *)&intwork;
   shortp = (short *)&intwork;
   sub(intp,shortp);
}
