#include <stdio.h>
#include <string.h>
char    **charp;
unsigned char    **ucharp;

void sub(){
   strcpy(*charp,"ab");
   **ucharp = 2;
   strcat(*charp,"ab");

   if(strcmp(*charp,"ab") == 0 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double charwork = 'a';
   char *charworkp = (char *)&charwork;
   charp = &charworkp;
   ucharp = (unsigned char **)&charworkp;

   sub();
}
