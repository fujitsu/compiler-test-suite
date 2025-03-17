#include <stdio.h>
#include <string.h>
void sub(unsigned char **ucharp, signed char **scharp){
   **ucharp = 10;
   strcpy(*scharp,"cd");
   **ucharp = **ucharp + 3;

   if(**ucharp == 13 && strcmp(*scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned char **ucharp;
   signed char **scharp;
   long double scharwork = 'a';
   signed char *scharworkp = (signed char *)&scharwork;
   ucharp = (unsigned char **)&scharworkp;
   scharp = &scharworkp;

   sub(ucharp,scharp);
}
