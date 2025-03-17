#include <stdio.h>
#include <string.h>
long    *longp;
char    *charp;

void sub(){
   *longp = 10;
   strcpy(charp,"cd");
   *longp = *longp + 3;

   if(*longp == 13 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long longwork[5] = {1,2,3,4,5};
   longp = longwork;
   charp = (char *)longwork;

   sub();
}
