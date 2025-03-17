#include <stdio.h>
#include <string.h>
void sub(unsigned short *ushortp, char *charp){
   *ushortp = 10;
   strcpy(charp,"cd");
   *ushortp = *ushortp + 3;

   if(*ushortp == 13 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned short *ushortp;
   char *charp;
   long double ushortwork = 2;
   ushortp = (unsigned short *)&ushortwork;
   charp = (char *)&ushortwork;
   sub(ushortp,charp);
}
