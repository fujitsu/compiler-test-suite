#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct base {
   int c[5],d[5];
   };
struct tag1 {
   int a,b,c[3],d,e;
   struct base bst,*p;
   float   f;
   };
struct tag2 {
   int a,b,c[4],d,e;
   struct base bst,*p;
   float f,f2;
   };
   struct tag1 st1,*p1;
   struct tag2 st2,*p2;
int main()
{
   int i,j,sub(struct tag1,struct tag2);

   st1.c[0]=1;
   st2.c[0]=1;
   st1.c[1]=2;
   st2.c[1]=2;
   st1.c[2]=3;
   st2.c[2]=3;
   for(i=0,j=0;i<3;i++,j++)
     st1.a += st1.c[i]*st2.c[j];
   if(st1.a == 14)
     printf("*** SCOSC19 - 01 *** O    K ***\n");
   else
     printf("***** SCOSC19 - 01 ** NG    %d *****\n",st1.a);

   st1.p = &st1.bst;
   st2.p = &st1.bst;

   st1.bst.c[0]=1;
   st2.bst.c[0]=1;
   st1.bst.c[1]=2;
   st2.bst.c[1]=2;
   st1.bst.c[2]=3;
   st2.bst.c[2]=3;
   for(i=0,j=0;i<3;i++,j++)
     st1.b += st1.p->c[i]*st2.p->c[j];
   if(st1.b == 14)
     printf("*** SCOSC19 - 02 *** O    K ***\n");
   else
     printf("***** SCOSC19 - 02 ** NG    %d *****\n",st1.b);

   p1 = &st1;
   p2 = &st2;
   st1.d = 5;
   st2.d = 6;
   p2->a = p1->d * p2->d;
   if(st2.a == 30)
     printf("*** SCOSC19 - 03 *** O    K ***\n");
   else
     printf("***** SCOSC19 - 03 ** NG    %d *****\n",st2.a);

   st1.f = 5.f;
   st2.f = 6.f;
   p2->f2 = p1->f * p2->f;
   if(st2.f2 == 30.f)
     printf("*** SCOSC19 - 04 *** O    K ***\n");
   else
     printf("***** SCOSC19 - 04 ** NG    %e *****\n",st2.f2);
exit (0);
}
