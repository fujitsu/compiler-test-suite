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
   long double intwork = 2;
   intp = (int *)&intwork;
   uintp = (unsigned int *)&intwork;
   sub();
}
