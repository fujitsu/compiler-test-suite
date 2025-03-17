#include <stdio.h>
void sub(int **intp, unsigned int **uintp){
   **intp = 10;
   **uintp = 5;
   **intp = **intp + 3;

   if(**intp == 13 && **uintp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int **intp;
   unsigned int **uintp;
   long double intwork = 2;
   int *intworkp = (int *)&intwork;
   intp = &intworkp;
   uintp = (unsigned int **)&intworkp;

   sub(intp,uintp);
}
