#include <stdio.h>
#include <string.h>
unsigned long    *ulongp;
char    *charp;

void sub(){
   *ulongp = 10;
   strcpy(charp,"cd");
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long ulongwork[5] = {1,2,3,4,5};
   ulongp = ulongwork;
   charp = (char *)ulongwork;

   sub();
}
