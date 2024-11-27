#include  <stdio.h>
int main()
{
   struct tag1 {
         int a[3];
         } **p,**q;
   struct tag1 x,y,*i,*j;
   struct tag2 {
         int b[3];
         float h;
         } **t,**r;
   struct tag2 x2,y2,*i2,*j2;
   printf(" start\n");
   i2=&x2;
   j2=&y2;
   t=&i2;
   r=&j2;
   p=&i;
   q=&j;
   *p=&x;
   *q=&y;
   x.a[2]=1;
   (*p)->a[2]=2;
   y.a[1]=1;
   j->a[1]=i->a[2];
   if(x.a[2]==2 && y.a[1]==2)
         printf("     ok  \n");
   else
         printf("     ng  \n");
   printf("**** end ****\n");
   j->a[2]=1;              
   i2->b[2]=j->a[2];
   i2=&x2;       
   
              
   }
