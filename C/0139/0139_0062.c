#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  


 int a=1;
 char b;
 extern char b;
 static float c,d,e,f,g,h,i,j,k,l,m,n,o,p;
int main (void)
 {
 int test1(int a, char c);
 short int test2(char a, float b);
 double test3(int x, float z);
 extern int test4(float x, float z);

 printf(" **** \n");

 if (test1(a,b) != 0)
     printf(" **** \n");
 if (test2(b,c) != 255)
     printf(" **** \n");
 if (test3(a,c) != -1.0)
     printf(" **** \n");
 if (test4(f,g) != 300)
     printf(" **** \n");

 printf(" **** \n");
exit (0);
 }

  int test1(int x, char z)
 {
 if (x!=1 || z!=0)
     printf(" **** \n");
 return 0;
 }

 short int test2(char x,float z)
 {
 if (x!=0 || z!=0.0)
     printf(" **** \n");
 return 255;
 }

 double test3 (int x, float z)
 {
 int i=1;
   {
     {
       {
         {
           {
             {
             int i=2;
               {
               if (i != 2 || x != 1)
                   printf(" **** \n");
               }
             }
           }
           if (i != 1 || z != 0.0)
               printf(" **** \n");
         }
       }
     }
   }
 return -1.0;
 }

 int test4 (float x, float z)
 {
 int i = 100;
 int k = 100;
   {
   int l;
     {
     int j = 100;
     l=j;
     }
   k+=l;
   }
 if (x != 0 || z != 0.0)
     printf(" **** \n");
 return i+k;
 }
