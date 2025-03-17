#include <stdio.h>
void sub(unsigned int **uintp, unsigned char **ucharp){
   **uintp = 10;
   **ucharp = 2;
   **uintp = **uintp + 3;

   if(**uintp == 13 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int **uintp;
   unsigned char **ucharp;
   long double uintwork = 2;
   unsigned int *uintworkp = (unsigned int *)&uintwork;
   uintp = &uintworkp;
   ucharp = (unsigned char **)&uintworkp;

   sub(uintp,ucharp);
}
