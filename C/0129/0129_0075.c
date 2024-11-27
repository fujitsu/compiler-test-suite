#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
 {
   struct t1 {
     int a1[3];
   };
   struct t1 x,*p1,*p2;
   int  i,s[3],t[3],u[3],v[3],w[3];
   int  *q1,*q2,*r1,*r2,*qq1,*qq2;

   printf("***  START ***\n");
      x.a1[0]=0;
      x.a1[1]=0;
      x.a1[2]=0;

      for(i=0;i<3;i++) {
        p1=&x;
        p1->a1[i]=i+1;
        p2=&x;
        s[i]=p2->a1[i];
      }

      for(i=0;i<3;i++) {
        if(s[i]!=i+1) {
           printf("***  **** N   G ****\n");
           printf("S(1,2,3)=%d,%d,%d\n",s[0],s[1],s[2]);
           goto error1;
        }
      }
      printf("***  *** O     K ***\n");
      error1:;

      for(i=0;i<3;i++) {
        q1=&(p1->a1[i]);
        *q1=i+10;
        q2=&(p1->a1[i]);
        t[i]=*q2;
      }

      for(i=0;i<3;i++) {
        if(t[i]!=i+10) {
           printf("***  **** N   G ****\n");
           printf("T(1,2,3)=%d,%d,%d\n",t[0],t[1],t[2]);
           goto error2;
        }
      }
      printf("***  *** O     K ***\n");
      error2:;

      for(i=0;i<3;i++) {
        r1=&(x.a1[i]);
        *r1=i;
        r2=&(x.a1[i]);
        u[i]=*r2;
      }

      for(i=0;i<3;i++) {
        if(u[i]!=i) {
           printf("***  **** N   G ****\n");
           printf("U(1,2,3)=%d,%d,%d\n",u[0],u[1],u[2]);
           goto error3;
        }
      }
      printf("***  *** O     K ***\n");
      error3:;

      for(i=0;i<3;i++) {
        qq1=&(p1->a1[i]);
        w[i]=*qq1;
        qq2=&(p1->a1[i]);
        v[i]=*qq2;
      }

      for(i=0;i<3;i++) {
        if(v[i]!=w[i]) {
           printf("***  **** N   G ****\n");
           printf("V(1,2,3)=%d,%d,%d\n",v[0],v[1],v[2]);
           printf("W(1,2,3)=%d,%d,%d\n",w[0],w[1],w[2]);
           goto error4;
        }
      }
      printf("***  *** O     K ***\n");
      error4:;

   printf("***  ENDED ***\n");
exit (0);
 }
