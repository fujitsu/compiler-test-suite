#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
 
 
 
int main()
 {
   int i1,i2,i,j,a[10],c[10];
   struct flm {
     int b[10];
   } x;
   struct flm  *p;
   for(i=0;i<10;i++) {
     a[i]=10-i;
     x.b[i]=i;
     c[i]=i;
   }
   p=&x;
   i1=3;
   i2=7;
   for(i=0;i<3;i++) {
     p->b[i1]=a[i1];
     c[i2]=p->b[i2];
     a[i2]=c[i1];
   }
   if(a[3]!=7) {
     printf("ngngng  at a[3] ngngng\n");
     printf("a[3] = %d\n",a[3]);
     goto error;
   }
   if(a[7]!=3) {
     printf("ngngng  at a[7] ngngng\n");
     printf("a[7] = %d\n",a[7]);
     goto error;
   }
   if(p->b[3]!=7) {
     printf("ngngng  at b[3] ngngng\n");
     printf("b[3] = %d\n",x.b[3]);
     goto error;
   }
   if(p->b[7]!=7) {
     printf("ngngng  at b[7] ngngng\n");
     printf("b[7] = %d\n",x.b[7]);
     goto error;
   }
   if(c[3]!=3) {
     printf("ngngng  at c[3] ngngng\n");
     printf("c[3] = %d\n",c[3]);
     goto error;
   }
   if(c[7]!=7) {
     printf("ngngng  at c[7] ngngng\n");
     printf("c[7] = %d\n",c[7]);
     goto error;
   }
   printf("okokok  okokok\n");
   error:;
exit (0);
 }
