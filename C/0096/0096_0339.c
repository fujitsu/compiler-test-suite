#include <string.h>
#include  <stdio.h>
 
 
 
 int   outi1,outi2;
int main()
 {
   int *pi;
   int ai,bi,ei,fi,i;
   float *pf;
   float af,bf,ef,ff;
   struct array {
     float aaf[10];
     char  chr[10];
   };
   struct array  xs;
   struct array *ps;

   union alis {
     int ui;
     struct array as;
   };
   union alis  xu;
   union alis *pu;

   xu.ui=0;
   pu=&xu;
   memset(xu.as.aaf,0x00,40);
   memcpy(xu.as.chr,"abcdefghij",10);
   for(i=0;i<10;i++) {
     ff=pu->as.aaf[i];
     pu->ui=10;
     ef=pu->as.aaf[i];
     pu->ui=10;
   }

     ff=pu->as.aaf[0];
     pu->ui=10;
     ef=pu->as.aaf[0];

   ai=10;
   if (memcmp(&ef,&ai,4)==0) printf(" ***ok***\n");
   else            printf(" ***ng*** ef=%d\n",ef);
 }
