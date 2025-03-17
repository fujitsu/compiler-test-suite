#include <stdio.h>
#include <string.h>
void sub(unsigned short *ushortp, signed char *scharp){
   *ushortp = 10;
   strcpy(scharp,"cd");
   *ushortp = *ushortp + 3;

   if(*ushortp == 13 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned short *ushortp;
   signed char *scharp;
   long double ushortwork = 2;
   ushortp = (unsigned short *)&ushortwork;
   scharp = (signed char *)&ushortwork;
   sub(ushortp,scharp);
}
