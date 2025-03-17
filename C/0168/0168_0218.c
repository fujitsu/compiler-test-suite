#include <stdio.h>
#include <string.h>
void sub(unsigned long *ulongp, char *charp){
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
   unsigned long *ulongp;
   char *charp;
   long double ulongwork = 2;
   ulongp = (unsigned long *)&ulongwork;
   charp = (char *)&ulongwork;
   sub(ulongp,charp);
}
