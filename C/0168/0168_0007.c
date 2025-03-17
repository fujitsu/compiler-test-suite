#include <stdio.h>
#include <string.h>
double    *doublep;
char    *charp;

void sub(){
   *doublep = 10.0;
   strcpy(charp,"cd");
   *doublep = *doublep + 3.0;

   if(*doublep == 13.0 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double doublework = 2.0;
   doublep = (double *)&doublework;
   charp = (char *)&doublework;
   sub();
}
