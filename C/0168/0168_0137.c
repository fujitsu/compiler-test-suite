#include <stdio.h>
#include <string.h>
void sub(int *intp, signed char *scharp){
   *intp = 10;
   strcpy(scharp,"cd");
   *intp = *intp + 3;

   if(*intp == 13 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int *intp;
   signed char *scharp;
   int intwork[5] = {1,2,3,4,5};
   intp = intwork;
   scharp = (signed char *)intwork;

   sub(intp,scharp);
}
