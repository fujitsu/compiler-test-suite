#include <stdio.h>
#include <string.h>
short    *shortp;
char    *charp;

void sub(){
   *shortp = 10;
   strcpy(charp,"cd");
   *shortp = *shortp + 3;

   if(*shortp == 13 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double shortwork = 2;
   shortp = (short *)&shortwork;
   charp = (char *)&shortwork;
   sub();
}
