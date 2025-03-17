#include <stdio.h>
#include <string.h>
void sub(short *shortp, char *charp){
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
   short *shortp;
   char *charp;
   long double shortwork = 2;
   shortp = (short *)&shortwork;
   charp = (char *)&shortwork;
   sub(shortp,charp);
}
