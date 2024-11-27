#include  <stdio.h>
 
 
 
 int   outi1,outi2;
int main()
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of a-2\n");
     }
   }
   ai=10;

   
   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of c-2\n");
     }
   }
   ai=10;

   
   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;
 }
