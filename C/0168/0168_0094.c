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
   long double ushortwork = 2;
   ushortp = (unsigned short *)&ushortwork;
   scharp = (signed char *)&ushortwork;
   sub();
}
