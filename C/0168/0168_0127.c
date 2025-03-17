#include <stdio.h>
#include <string.h>
void sub(int **intp, char **charp){
   **intp = 10;
   strcpy(*charp,"cd");
   **intp = **intp + 3;

   if(**intp == 13 && strcmp(*charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int **intp;
   char **charp;
   long double intwork = 2;
   int *intworkp = (int *)&intwork;
   intp = &intworkp;
   charp = (char **)&intworkp;

   sub(intp,charp);
}
