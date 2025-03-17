#include <stdio.h>
void sub(int **intp, unsigned char **ucharp){
   **intp = 10;
   **ucharp = 2;
   **intp = **intp + 3;

   if(**intp == 13 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int **intp;
   unsigned char **ucharp;
   long double intwork = 2;
   int *intworkp = (int *)&intwork;
   intp = &intworkp;
   ucharp = (unsigned char **)&intworkp;

   sub(intp,ucharp);
}
