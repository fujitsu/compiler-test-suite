#include <stdio.h>
int    *intp;
unsigned char    *ucharp;

void sub(){
   *intp = 10;
   *ucharp = 2;
   *intp = *intp + 3;

   if(*intp == 13 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int intwork[5] = {1,2,3,4,5};
   intp = intwork;
   ucharp = (unsigned char *)intwork;

   sub();
}
