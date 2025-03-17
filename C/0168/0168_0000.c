#include <stdio.h>
#include <string.h>
char    *charp;
signed char    *scharp;

void sub(){
   strcpy(charp,"ab");
   strcpy(scharp,"cd");
   strcat(charp,"ab");

   if(strcmp(charp,"abcd")  == 0 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   char charwork[5] = "a";
   charp = charwork;
   scharp = (signed char *)charwork;

   sub();
}
