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
   long double ulongwork = 2;
   ulongp = (unsigned long *)&ulongwork;
   charp = (char *)&ulongwork;
   sub();
}
