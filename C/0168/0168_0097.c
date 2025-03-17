#include <stdio.h>
unsigned short    *ushortp;
unsigned char    *ucharp;

void sub(){
   *ushortp = 10;
   *ucharp = 2;
   *ushortp = *ushortp + 3;

   if(*ushortp == 13 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double ushortwork = 2;
   ushortp = (unsigned short *)&ushortwork;
   ucharp = (unsigned char *)&ushortwork;
   sub();
}
