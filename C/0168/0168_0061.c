#include <stdio.h>
#include <string.h>
short    *shortp;
signed char    *scharp;

void sub(){
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
   long double shortwork = 2;
   shortp = (short *)&shortwork;
   scharp = (signed char *)&shortwork;
   sub();
}
