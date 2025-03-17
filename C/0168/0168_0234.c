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
   unsigned short ushortwork[5] = {1,2,3,4,5};
   ushortp = ushortwork;
   charp = (char *)ushortwork;

   sub(ushortp,charp);
}
