#include <stdio.h>
#include <string.h>
void sub(short *shortp, signed char *scharp){
   *shortp = 10;
   strcpy(scharp,"cd");
   *shortp = *shortp + 3;

   if(*shortp == 13 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   short *shortp;
   signed char *scharp;
   short shortwork[5] = {1,2,3,4,5};
   shortp = shortwork;
   scharp = (signed char *)shortwork;

   sub(shortp,scharp);
}
