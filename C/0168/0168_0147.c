#include <stdio.h>
void sub(int *intp, unsigned short *ushortp){
   *intp = 10;
   *ushortp = 5;
   *intp = *intp + 3;

   if(*intp == 13 && *ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   unsigned short *ushortp;
   int intwork[5] = {1,2,3,4,5};
   intp = intwork;
   ushortp = (unsigned short *)intwork;

   sub(intp,ushortp);
}
