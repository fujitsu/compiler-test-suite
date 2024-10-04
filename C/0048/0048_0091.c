#include <stdio.h>

 int a=1;
 char b;
 extern char b;
 static float c,d,e,f,g,h,i,j,k,l,m,n,o,p;
int 
main (void)
 {
 int test1(int a, char c);
 short int test2(char a, float b);
 double test3(int x, float z);
 extern int test4(float x, float z);

 printf(" ****  TEST START ***\n");

 if (test1(a,b) != 0)
     printf(" ****  TEST 6 NG ***\n");
 if (test2(b,c) != 255)
     printf(" ****  TEST 7 NG ***\n");
 if (test3(a,c) != -1.0)
     printf(" ****  TEST 8 NG ***\n");
 if (test4(f,g) != 300)
     printf(" ****  TEST 9 NG ***\n");

 printf(" ****  TEST END ***\n");
 }

  int test1(int x, char z)
 {
 if (x!=1 || z!=0)
     printf(" ****  TEST 1 NG ***\n");
 return 0;
 }

 short int test2(char x,float z)
 {
 if (x!=0 || z!=0.0)
     printf(" ****  TEST 2 NG ***\n");
 return 255;
 }

 double 
test3 (int x, float z)
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
                   printf(" ****  TEST 3 NG ***\n");
               }
             }
           }
           if (i != 1 || z != 0.0)
               printf(" ****  TEST 4 NG ***\n");
         }
       }
     }
   }
 return -1.0;
 }

 int 
test4 (float x, float z)
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
     printf(" ****  TEST 5 NG ***\n");
 return i+k;
 }
