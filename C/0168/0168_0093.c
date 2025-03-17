#include <stdio.h>
#include <string.h>
unsigned short    *ushortp;
signed char    *scharp;

void sub(){
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
   unsigned short ushortwork[5] = {1,2,3,4,5};
   ushortp = ushortwork;
   scharp = (signed char *)ushortwork;

   sub();
}
