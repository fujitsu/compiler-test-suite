#include <stdio.h>
double    *doublep;
unsigned char    *ucharp;

void sub(){
   *doublep = 10.0;
   *ucharp = 2;
   *doublep = *doublep + 3.0;

   if(*doublep == 13.0 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   double doublework[5] = {1.0,2.0,3.0,4.0,5.0};
   doublep = doublework;
   ucharp = (unsigned char *)doublework;

   sub();
}
