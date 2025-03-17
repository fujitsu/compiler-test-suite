#include <stdio.h>
#include <string.h>
unsigned short    **ushortp;
char    **charp;

void sub(){
   **ushortp = 10;
   strcpy(*charp,"cd");
   **ushortp = **ushortp + 3;

   if(**ushortp == 13 && strcmp(*charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double ushortwork = 2;
   unsigned short *ushortworkp = (unsigned short *)&ushortwork;
   ushortp = &ushortworkp;
   charp = (char **)&ushortworkp;

   sub();
}
