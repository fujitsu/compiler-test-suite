#include <stdio.h>
#include <string.h>
void sub(char **charp, signed char **scharp){
   strcpy(*charp,"ab");
   strcpy(*scharp,"cd");
   strcat(*charp,"ab");

   if(strcmp(*charp,"abcd")  == 0 && strcmp(*scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   char **charp;
   signed char **scharp;
   long double charwork = 'a';
   char *charworkp = (char *)&charwork;
   charp = &charworkp;
   scharp = (signed char **)&charworkp;

   sub(charp,scharp);
}
