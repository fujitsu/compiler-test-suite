#include <stdio.h>
#include <string.h>
unsigned int    **uintp;
char    **charp;

void sub(){
   **uintp = 10;
   strcpy(*charp,"cd");
   **uintp = **uintp + 3;

   if(**uintp == 13 && strcmp(*charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double uintwork = 2;
   unsigned int *uintworkp = (unsigned int *)&uintwork;
   uintp = &uintworkp;
   charp = (char **)&uintworkp;

   sub();
}
