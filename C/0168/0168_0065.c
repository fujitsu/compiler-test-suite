#include <stdio.h>
short    **shortp;
unsigned char    **ucharp;

void sub(){
   **shortp = 10;
   **ucharp = 2;
   **shortp = **shortp + 3;

   if(**shortp == 13 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double shortwork = 2;
   short *shortworkp = (short *)&shortwork;
   shortp = &shortworkp;
   ucharp = (unsigned char **)&shortworkp;

   sub();
}
