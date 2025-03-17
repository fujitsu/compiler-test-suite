#include <stdio.h>
short    *shortp;
unsigned short    *ushortp;

void sub(){
   *shortp = 10;
   *ushortp = 5;
   *shortp = *shortp + 3;

   if(*shortp == 13 && *ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   short shortwork[5] = {1,2,3,4,5};
   shortp = shortwork;
   ushortp = (unsigned short *)shortwork;

   sub();
}
