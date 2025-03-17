#include <stdio.h>
short    *shortp;
unsigned char    *ucharp;

void sub(){
   *shortp = 10;
   *ucharp = 2;
   *shortp = *shortp + 3;

   if(*shortp == 13 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   short shortwork[5] = {1,2,3,4,5};
   shortp = shortwork;
   ucharp = (unsigned char *)shortwork;

   sub();
}
