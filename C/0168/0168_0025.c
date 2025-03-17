#include <stdio.h>
#include <string.h>
int    *intp;
char    *charp;

void sub(){
   *intp = 10;
   strcpy(charp,"cd");
   *intp = *intp + 3;

   if(*intp == 13 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double intwork = 2;
   intp = (int *)&intwork;
   charp = (char *)&intwork;
   sub();
}
