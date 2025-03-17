#include <stdio.h>
int    *intp;
unsigned int    *uintp;

void sub(){
   *intp = 10;
   *uintp = 5;
   *intp = *intp + 3;

   if(*intp == 13 && *uintp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int intwork[5] = {1,2,3,4,5};
   intp = intwork;
   uintp = (unsigned int *)intwork;

   sub();
}
