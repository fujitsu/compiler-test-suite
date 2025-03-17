#include <stdio.h>
#include <string.h>
void sub(unsigned long **ulongp, signed char **scharp){
   **ulongp = 10;
   strcpy(*scharp,"cd");
   **ulongp = **ulongp + 3;

   if(**ulongp == 13 && strcmp(*scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long **ulongp;
   signed char **scharp;
   long double ulongwork = 2;
   unsigned long *ulongworkp = (unsigned long *)&ulongwork;
   ulongp = &ulongworkp;
   scharp = (signed char **)&ulongworkp;

   sub(ulongp,scharp);
}
