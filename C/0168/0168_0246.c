#include <stdio.h>
void sub(unsigned short **ushortp, unsigned char **ucharp){
   **ushortp = 10;
   **ucharp = 2;
   **ushortp = **ushortp + 3;

   if(**ushortp == 13 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned short **ushortp;
   unsigned char **ucharp;
   long double ushortwork = 2;
   unsigned short *ushortworkp = (unsigned short *)&ushortwork;
   ushortp = &ushortworkp;
   ucharp = (unsigned char **)&ushortworkp;

   sub(ushortp,ucharp);
}
