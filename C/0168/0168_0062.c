#include <stdio.h>
#include <string.h>
short    **shortp;
signed char    **scharp;

void sub(){
   **shortp = 10;
   strcpy(*scharp,"cd");
   **shortp = **shortp + 3;

   if(**shortp == 13 && strcmp(*scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double shortwork = 2;
   short *shortworkp = (short *)&shortwork;
   shortp = &shortworkp;
   scharp = (signed char **)&shortworkp;

   sub();
}
