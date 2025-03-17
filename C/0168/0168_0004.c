#include <stdio.h>
#include <string.h>
char    *charp;
unsigned char    *ucharp;

void sub(){
   strcpy(charp,"ab");
   *ucharp = 2;
   strcat(charp,"ab");

   if(strcmp(charp,"ab") == 0 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   char charwork[5] = "a";
   charp = charwork;
   ucharp = (unsigned char *)charwork;
   sub();
}
