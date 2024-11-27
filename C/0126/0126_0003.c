#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
   int i,n,ix;
   long int a[20],b[20],c[20],ax,bx,cx;
   float    d[20],e[20],f[20],dx,ex,fx;
   double   o[20],p[20],q[20],ox,px,qx;
   unsigned long int r[20],s[20],t[20],rx,sx,tx;
   long int l[20];
   for(i=0;i<20;i++){
     a[i]=i%5;
     b[i]=i%3;
     c[i]=i;
     d[i]=(float)(i);
     e[i]=(float)(21-i);
     f[i]=(float)(i%3+1);
     o[i]=(double)(i-1);
     p[i]=(double)(20-i);
     q[i]=(double)(i%5);
     r[i]=i;
     s[i]=20-i;
     t[i]=i%5;
     l[i]=i%3;
   }
 
 
   ax=bx=999;
   for(i=1;i<20;i++){
     if (ax > a[i]){
       ax=a[i];
       bx=i;
     }
   }
   printf(" test1-1 ax= %ld  bx= %ld \n",ax,bx);
   cx=bx=0;
   for(i=1;i<20;i++){
     if (cx < c[i]){
       cx=c[i];
       bx=i;
     }
   }
   printf(" test1-2 cx= %ld  bx= %ld \n",cx,bx);
 
   dx=ix=999;
   for(i=1;i<20;i++){
     if (dx > d[i]){
       dx=d[i];
       ix=i;
     }
   }
   printf(" test1-3 dx= %g  ix= %ld \n",dx,ix);
   ex=bx=0;
   for(i=1;i<20;i++){
     if (ex < e[i]){
       ex=e[i];
       ix=i;
     }
   }
   printf(" test1-4 ex= %g  ix= %ld \n",ex,ix);
 
   ox=999.;
   ix=-1;
   for(i=1;i<20;i++){
     if (ox > o[i]){
       ox=o[i];
       ix=i;
     }
   }
   printf(" test1-5 ox= %g  ix= %ld \n",ox,ix);
   px=0.;
   ix=-1;
   for(i=1;i<20;i++){
     if (px < p[i]){
       px=p[i];
       ix=i;
     }
   }
   printf(" test1-6 px= %g  ix= %ld \n",px,ix);

 
   cx=bx=999;
   for(i=1;i<20;i++){
     if (cx >= c[i]){
       cx=c[i];
       bx=i;
     }
   }
   printf(" test2-1 cx= %ld  bx= %ld \n",cx,bx);
   ax=bx=0;
   for(i=1;i<20;i++){
     if (ax <= a[i]){
       ax=a[i];
       bx=i;
     }
   }
   printf(" test2-2 ax= %ld  bx= %ld \n",ax,bx);
 
   fx=888.;
   ix=0;
   for(i=1;i<20;i++){
     if (fx >= f[i]){
       fx=f[i];
       ix=i;
     }
   }
   printf(" test2-3 fx= %g  ix= %ld \n",fx,ix);
   bx=-1.;
   ix=-1;
   for(i=1;i<20;i++){
     if (dx <= d[i]){
       dx=d[i];
       ix=i;
     }
   }
   printf(" test2-4 dx= %g  ix= %ld \n",dx,ix);
 
   qx=987.;
   ix=0;
   for(i=1;i<20;i++){
     if (qx >= q[i]){
       qx=q[i];
       ix=i;
     }
   }
   printf(" test2-5 qx= %g  ix= %ld \n",qx,ix);
   ox=-9999.;
   ix=-1;
   for(i=1;i<20;i++){
     if (ox <= o[i]){
       ox=o[i];
       ix=i;
     }
   }
   printf(" test2-6 ox= %g  ix= %ld \n",ox,ix);
 
   rx=1;
   ix=-1;
   for(i=1;i<20;i++){
     if (r[i] > rx){
       rx=r[i];
       ix=i;
     }
   }
   printf(" find other rx= %lu  ix= %ld \n",rx,ix);

   ax=rx=0;
   dx=ox=0.;
   for(i=1;i<20;i++){
     ax=ax+a[i]+b[i];
     dx=dx+d[i]+e[i];
     ox=ox+o[i]+p[i];
   }
   for(i=1;i<20;i++){
     rx=rx+r[i]+s[i];
   }
   printf(" sum1-1 ax= %ld  rx= %lu ",ax,rx);
   printf(" dx= %g  ox= %g \n",dx,ox);

   bx=sx=0;
   ex=px=0.;
   for(i=1;i<20;i++){
     if (l[i] == 0) continue;
     bx=bx+b[i]+c[i];
     ex=ex+e[i]+f[i];
     px=px+p[i]+q[i];
   }
   for(i=1;i<20;i++){
     sx=sx+s[i]+t[i];
   }
   printf(" sum1-2 bx= %ld  sx= %lu ",bx,sx);
   printf(" ex= %g  px= %g \n",ex,px);

   for(i=1;i<20;i++){
     a[i]=a[i-1]+b[i]*c[i];
     d[i]=d[i-1]+e[i]*f[i];
     o[i]=o[i-1]+p[i]*q[i];
   }
   for(i=1;i<20;i++){
     r[i]=r[i-1]+s[i]*t[i];
   }
   for(i=1;i<20;i++){
     printf(" a= %ld  d= %g  o=  %g  r= %lu \n",a[i],d[i],o[i],r[i]);
   }
exit (0);
}
