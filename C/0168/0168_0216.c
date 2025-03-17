#include <stdio.h>
void sub(unsigned int **uintp, unsigned short **ushortp){
   **uintp = 10;
   **ushortp = 5;
   **uintp = **uintp + 3;

   if(**uintp == 13 && **ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int **uintp;
   unsigned short **ushortp;
   long double uintwork = 2;
   unsigned int *uintworkp = (unsigned int *)&uintwork;
   uintp = &uintworkp;
   ushortp = (unsigned short **)&uintworkp;

   sub(uintp,ushortp);
}
