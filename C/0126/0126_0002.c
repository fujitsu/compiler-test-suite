#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
   int i,n;
   int      a[20],b[20],c[20],ax,bx,cx;
   long int d[20],e[20],f[20],dx,ex,fx;
   unsigned int      o[20],p[20],q[20],ox,px,qx;
   unsigned long int r[20],s[20],t[20],rx,sx,tx;
   double   x[20],y[20],z[20];
   long int l[20];
   for(i=0;i<20;i++){
     a[i]=i%5;
     b[i]=i%3;
     c[i]=i;
     d[i]=1;
     e[i]=i-2;
     f[i]=i%3+1;
     o[i]=i+1;
     p[i]=2;
     q[i]=i%3;
     r[i]=21-i;
     s[i]=i%5;
     t[i]=i%6;
     x[i]=(double)(i);
     y[i]=(double)(20-i);
     z[i]=(double)(i%5);
     l[i]=i%3;
   }

   for(i=3;i<20;i++){
     ax=a[i]+b[i];
     bx=b[i]*c[i];
     cx=(ax & bx) | (d[i] & e[1]);
     a[i]=cx;
     dx=(d[i] | e[i]);
     ex=(e[i] | f[1]);
     d[i]=dx+1;
     if (x[i] >= y[i]){
       e[i]=(ex | f[i]);
       b[i]=(ax & dx) + (bx | ex);
     }
     fx=(f[i]^a[i]);
     b[i]=fx+d[i];
     c[i]=(c[i]^f[10]);
   }

   for(i=2;i<20;i++){
     if (l[i] == 0) continue;
     ox=o[i]+p[i];
     px=q[i]*r[i];
     qx=(ox & px) | (d[i] & e[1]);
     o[i]=qx;
     rx=(d[i] | e[i]);
     sx=(r[i] | s[1]);
     r[i]=rx+1;
     s[i]=(sx | f[i]);
     p[i]=(ox & rx) + (px | sx);
     tx=(s[i]^t[i]);
     q[i]+=tx;
     t[i]=(tx | o[i]) + (c[i]^e[10]);
   }
   printf(" ***  *** no.1 *** \n");
   for(i=0;i<20;i++){
     printf(" a= %ld  b= %ld  c= %ld ",a[i],b[i],c[i]);
     printf(" d= %ld  e= %ld  f= %ld \n",d[i],e[i],f[i]);
     printf(" o= %lu  p= %lu  q= %lu ",o[i],p[i],q[i]);
     printf(" r= %lu  s= %lu  t= %lu \n",r[i],s[i],t[i]);
   }

   ax=(x[i-1]>y[i-1]);
   bx=(y[i-1]<=z[i-1]);
   for(i=0;i<20;i++){
     cx=(a[i]>b[i]) && (b[i]>=c[i]);
     dx=(d[i] || e[i]);
     ex=(f[i] && a[i]) & !(x[i]<=z[i]);
     a[i]=cx;
     b[i]=(ax||a[i]);
     c[i]= !dx;
     e[i]= (ex == bx) && (d[i] >= 1);
     if (dx){
       d[i]=(dx & ex);
       e[i]=(ex && ax);
     }
     else{
       d[i]=(ax && cx) + (bx || dx);
       e[i]= !(y[i] >= z[i]);
     }
   }
   printf(" ***  *** no.2 *** \n");
   for(i=0;i<20;i++){
     printf(" a= %ld  b= %ld  c= %ld ",a[i],b[i],c[i]);
     printf(" d= %ld  e= %ld  f= %ld \n",d[i],e[i],f[i]);
     printf(" o= %lu  p= %lu  q= %lu ",o[i],p[i],q[i]);
     printf(" r= %lu  s= %lu  t= %lu \n",r[i],s[i],t[i]);
   }

   for(i=0;i<20;i++){
     ax=b[i]+c[i];
     a[i]= ax<<3 ;
   }
   for(i=0;i<20;i++){
     bx=c[i]+d[i]*2;
     b[i]= bx>>2 ;
   }
   for(i=0;i<20;i++){
     dx=d[i]+e[i]+f[i];
     ex=a[i]+f[i]+e[i];
     c[i]=(dx<<2)+(ex>>2);
     if (d[i]==0){
       d[i]= dx<<3 ;
       e[i]= ex<<3 ;}
     else{
       d[i]= dx>>2 ;
       e[i]= ex>>2 ;
     }
   }
   for(i=0;i<20;i++){
     ox=p[i]+q[i];
     o[i]=ox<<(o[i]%3+1);
     px=(e[i]*2+1)%4;
     if (px==0) continue;
       r[i]=s[i]<<(t[i]%10);
       q[i]=(p[i]*10)>>px;
       rx=q[i]+r[i];
       s[i]=rx>>2;
       t[i]=rx<<3;
   }
   for(i=0;i<20;i++){
     p[i]=q[i]<<3;
     r[i]=s[i]>>2;
   }
   printf(" ***  *** no.3 *** \n");
   for(i=0;i<20;i++){
     printf(" a= %ld  b= %ld  c= %ld ",a[i],b[i],c[i]);
     printf(" d= %ld  e= %ld  f= %ld \n",d[i],e[i],f[i]);
     printf(" o= %lu  p= %lu  q= %lu ",o[i],p[i],q[i]);
     printf(" r= %lu  s= %lu  t= %lu \n",r[i],s[i],t[i]);
   }
exit (0);
}
