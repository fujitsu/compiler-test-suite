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
   long double shortwork = 2;
   shortp = (short *)&shortwork;
   scharp = (signed char *)&shortwork;
   sub(shortp,scharp);
}
