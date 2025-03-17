#include <stdio.h>
#include <string.h>
void sub(char *charp, unsigned char *ucharp){
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
   char *charp;
   unsigned char *ucharp;
   char charwork[5] = "a";
   charp = charwork;
   ucharp = (unsigned char *)charwork;

   sub(charp,ucharp);
}
