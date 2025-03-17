#include <stdio.h>
#include <string.h>
void sub(double *doublep, signed char *scharp){
   *doublep = 10.0;
   strcpy(scharp,"cd");
   *doublep = *doublep + 3.0;

   if(*doublep == 13.0 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   double *doublep;
   signed char *scharp;
   long double doublework = 2.0;
   doublep = (double *)&doublework;
   scharp = (signed char *)&doublework;
   sub(doublep,scharp);
}
