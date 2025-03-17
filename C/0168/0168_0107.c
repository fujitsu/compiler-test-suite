#include <stdio.h>
#include <string.h>
void sub(double **doublep, char **charp){
   **doublep = 10.0;
   strcpy(*charp,"cd");
   **doublep = **doublep + 3.0;

   if(**doublep == 13.0 && strcmp(*charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   double **doublep;
   char **charp;
   long double doublework = 2.0;
   double *doubleworkp = (double *)&doublework;
   doublep = &doubleworkp;
   charp = (char **)&doubleworkp;

   sub(doublep,charp);
}
