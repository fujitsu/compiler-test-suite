#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
   int i,j,n,ix;
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
 
 
  for(i=0;i<20;i++){
    ax=a[i]+b[i];
    dx=d[i]*e[i];
    ox=o[i]-p[i];
  }
  for(i=0;i<20;i++){
    rx=r[i]+s[i];
  }
  printf(" vts test 1-1 \n");
  printf(" ax= %ld , dx= %f , ox= %g , rx= %lu \n",ax,dx,ox,rx);
 
  for(j=0;j<20;j++){
    for(i=0;i<20;i++){
      c[j]=a[i]+b[i];
      f[j]=d[i]*e[i];
      q[j]=o[i]-p[i];
    }
    for(i=0;i<20;i++){
      t[j]=r[i]+s[i];
    }
  }
  printf(" vts test 1-2 \n");
  for(i=0;i<20;i++){
   printf(" c= %ld , f= %f , q= %g , t= %lu \n",c[i],f[i],q[i],t[i]);
  }
 
  for(i=0;i<20;i++){
    if (l[i] == 0) continue;
      bx=b[i]+c[i];
      ex=d[i]*f[i];
      o[1]=p[i]-q[i];
  }
  for(i=1;i<20;i++){
    if (l[i] != 0) continue;
      sx=r[i]+t[i];
      s[0]=r[i]*s[i];
  }
  printf(" vts test 1-3 \n");
  printf(" bx= %ld  ex= %f  o= %g ",bx,ex,o[1]);
  printf(" sx= %lu  s= %lu \n",sx,s[0]);
 
  for(i=0;i<20;i++){
    b[i]=a[i]+b[i]*c[i];
    d[i]=d[i]+e[i]*f[i];
    o[i]=o[i]+p[i]*q[i];
  }
  for(i=0;i<20;i++){
    r[i]=r[i]+s[i]*t[i];
  }
  printf(" m & a test2-1 \n");
  for(i=0;i<20;i++){
    printf(" b= %ld  d= %f ",b[i],d[i]);
    printf(" o= %g  r= %lu \n",o[i],r[i]);
  }
 
  for(i=0;i<20;i++){
    if (l[i] < 1)continue;
    c[i]=c[i]+b[i]*a[i];
    f[i]=f[i]+e[i]*d[i];
    q[i]=q[i]+p[i]*o[i];
  }
  for(i=0;i<20;i++){
    if (l[i] < 2){
      s[i]=s[i]+r[i]*t[i];
    }
  }
  printf(" m & a test2-2 \n");
  for(i=0;i<20;i++){
    printf(" c= %ld  f= %f ",c[i],f[i]);
    printf(" q= %g  s= %lu \n",q[i],s[i]);
  }
 
  i=19;
  for(j=0;j<10;j++){
   ax=a[j]+a[j+10];
   dx=d[j]-d[j+10];
   ox=o[i]*2.;
   for(i=2;i<18;i++){
     a[i]=ax-b[j];
     d[i]=dx-e[j];
     o[i]=ox-p[j];
   }
  }
  for(j=0;j<10;j++){
   rx=r[j]+r[j+10];
   for(i=2;i<18;i++){
     r[i]=rx+s[j];
   }
  }
  printf(" vss & vssd test \n");
  for(i=0;i<20;i++){
    printf(" a= %ld  d= %f ",a[i],d[i]);
    printf(" o= %g  r= %lu \n",o[i],r[i]);
  }
exit (0);
}
