#include <stdio.h>
#include <string.h>
void sub(unsigned int *uintp, char *charp){
   *uintp = 10;
   strcpy(charp,"cd");
   *uintp = *uintp + 3;

   if(*uintp == 13 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   char *charp;
   long double uintwork = 2;
   uintp = (unsigned int *)&uintwork;
   charp = (char *)&uintwork;
   sub(uintp,charp);
}
