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
   unsigned short ushortwork[5] = {1,2,3,4,5};
   ushortp = ushortwork;
   scharp = (signed char *)ushortwork;

   sub(ushortp,scharp);
}
