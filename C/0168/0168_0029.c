#include <stdio.h>
#include <string.h>
int    **intp;
signed char    **scharp;

void sub(){
   **intp = 10;
   strcpy(*scharp,"cd");
   **intp = **intp + 3;

   if(**intp == 13 && strcmp(*scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double intwork = 2;
   int *intworkp = (int *)&intwork;
   intp = &intworkp;
   scharp = (signed char **)&intworkp;

   sub();
}
