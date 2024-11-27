#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  


int test1();
int test2();
int main (void)
 {
 printf(" *** TEST \n");
 test1();
 printf(" *** TEST \n");
 exit (0);
 }

 int test1 (void)
 {
 register  int x;
 register int a;
 register long double b;
 register enum entag { en1, en2 } en;
 char g1=1;
 register char *g2=&g1;
 char h1[10];
 register char (*h)[10]=(char (*)[10])h1;
 union untag { int a; int b; } un = { -100 };
 register union untag *unp=&un;
 register int (*j)();
 register void *vp;
 register signed const int short k = -10;
 register volatile const float l = 0.25;
 int fnc(int a, register int b);
 int register n=1;
 double long volatile register o;
 long int register unsigned long s;
 struct sttag { int a; char b; } register const *st;
 struct sttag st2 = { -1, 1 };
 char register **t;  char u=1,*v=&u;

 x = sizeof(x);
 if (x != 4)
     printf(" *** \n");

 a = x++;
 if (a != 4)
     printf(" *** \n");

 b = x + a;
 if (b != 9.0)
     printf(" *** \n");

 en = en1;
 if (en != 0)
     printf(" *** \n");

 g1 = 3;
 if (*g2 != 3)
     printf(" *** \n");

 h1[0] = 0; h1[9]= 1;
 if ((*h)[0] != 0 || (*h)[9] != 1)
     printf(" *** \n");

 if (unp->a != -100 || unp->b != -100)
     printf(" *** \n");

 *g2=1;
 j=test2;
 if ((*j)(g2) != -1)
     printf(" *** \n");

 vp = g2;
 if ((int *)vp != (int *)g2)
     printf(" *** \n");

 if (l != 0.25)
     printf(" *** \n");

 if (fnc(2,3) != 6)
     printf(" *** \n");

 if (++n != 2)
     printf(" *** \n");

 o = l/n;
 if (o != 0.125)
     printf(" *** \n");


 s = 123456789012345LL;
 if (s != 123456789012345LL)
     printf(" *** \n");


 st = &st2;
 if (st->a != -1 || st->b != 1)
     printf(" *** \n");

 t = &v;
 *t = &(*v);
 if (*v != 1 || **t != 1)
     printf(" *** \n");
 return 0;
 }

 int test2 (register char *a)
 {
 return -*a;
 }

  int fnc(int x, register int y)
 {
 register int a=1;
   {
   const register int a=2;
     {
     int register a=3;
     if (++a != 4)
         printf(" *** \n");
     }
   if (a != 2)
       printf(" *** \n");
   }
 if (a != 1)
     printf(" *** \n");
 return x*y*a;
 }
