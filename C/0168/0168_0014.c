#include <stdio.h>
double    **doublep;
unsigned char    **ucharp;

void sub(){
   **doublep = 10.0;
   **ucharp = 2;
   **doublep = **doublep + 3.0;

   if(**doublep == 13.0 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double doublework = 2.0;
   double *doubleworkp = (double *)&doublework;
   doublep = &doubleworkp;
   ucharp = (unsigned char **)&doubleworkp;

   sub();
}
