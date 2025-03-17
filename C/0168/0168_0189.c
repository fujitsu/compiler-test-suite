#include <stdio.h>
void sub(short **shortp, unsigned short **ushortp){
   **shortp = 10;
   **ushortp = 5;
   **shortp = **shortp + 3;

   if(**shortp == 13 && **ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   short **shortp;
   unsigned short **ushortp;
   long double shortwork = 2;
   short *shortworkp = (short *)&shortwork;
   shortp = &shortworkp;
   ushortp = (unsigned short **)&shortworkp;

   sub(shortp,ushortp);
}
