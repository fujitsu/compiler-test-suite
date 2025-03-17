#include <stdio.h>
#include <string.h>
void sub(long **longp, char **charp){
   **longp = 10;
   strcpy(*charp,"cd");
   **longp = **longp + 3;

   if(**longp == 13 && strcmp(*charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long **longp;
   char **charp;
   long double longwork = 2;
   long *longworkp = (long *)&longwork;
   longp = &longworkp;
   charp = (char **)&longworkp;

   sub(longp,charp);
}
