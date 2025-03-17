#include <stdio.h>
void sub(unsigned int **uintp, unsigned long **ulongp){
   **uintp = 10;
   **ulongp = 5;
   **uintp = **uintp + 3;

   if(**uintp == 13 && **ulongp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int **uintp;
   unsigned long **ulongp;
   long double ulongwork = 2;
   unsigned long *ulongworkp = (unsigned long *)&ulongwork;
   uintp = (unsigned int **)&ulongworkp;
   ulongp = &ulongworkp;

   sub(uintp,ulongp);
}
