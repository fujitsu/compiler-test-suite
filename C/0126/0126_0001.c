#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
   int i,n;
   double a[20],b[20],c[20],dx,dy;
   float  d[20],e[20],f[20],fx,fy;
   long int o[20],p[20],q[20],ix,iy;
   unsigned long int r[20],s[20],t[20],ux,uy;
   long int l[20];
   for(i=0;i<20;i++){
     a[i]=2.0;
     b[i]=(double)(i)/10.;
     c[i]=2.0;
     d[i]=(float)(10-i);
     e[i]=(float)(i)/2.0;
     f[i]=3.0;
     o[i]=i;
     p[i]=11-i;
     q[i]=1;
     r[i]=i%5+1;
     s[i]=i*2;
     t[i]=3;
     l[i]=i%3;
   }

   for(i=0;i<20;i++){
     o[i]=o[i]+(b[i] >  a[i]);
     p[i]=p[i]-(c[i] <  d[i]);
     q[i]=q[i]+(o[i] ^= p[i]);
     r[i]=r[i]-(a[i] == d[i]);
     s[i]=s[i]+(b[i] <= e[i]);
     t[i]=t[i]-(c[i] >= f[i]);
   }
   printf(" ***  *** no.1 *** \n");
   for(i=0;i<20;i++){
     printf(" o= %ld  p= %ld  q= %ld \n",o[i],p[i],q[i]);
     printf(" r= %lu  s= %lu  t= %lu \n",r[i],s[i],t[i]);
   }

   dx=a[1];dy=b[5];
   fx=d[2];fy=e[6];
   for(i=0;i<20;i++){
     ix=(a[i] > dx) ;
     iy=(b[i] < dy) ;
     o[i]=(c[i] <= a[0]) | (b[i] == a[1]);
     p[i]=p[i]+(ix == 0);
     q[i]+=(iy ^= 0);
     ux=(d[i] >= e[1]);
     uy=(d[i] <= f[1]);
     r[i]=r[i]+(fx > d[i]);
     s[i]=s[i]+(fy < f[i]);
     t[i]=(c[i] <= b[1]) + (e[1] >= f[i]);
   }
   printf(" ***  *** no.2 *** \n");
   for(i=0;i<20;i++){
     printf(" o= %ld  p= %ld  q= %ld \n",o[i],p[i],q[i]);
     printf(" r= %lu  s= %lu  t= %lu \n",r[i],s[i],t[i]);
   }

   for(i=0;i<20;i++){
     ux=((i%3) == o[i]);
     uy=t[i] + (a[i] <= d[i]);
     if (l[i]==0) continue;
       ix=(a[i] <= b[i]);
       iy=p[i]+(e[i] > f[i]);
       if ((ix==0) || (iy==1)){
         o[i]=p[i]+(d[i] > d[1]);
         p[i]=q[i]+(ix+iy);
       } 
       r[i]=ix+(c[i]>c[1]);
       s[i]=(ix == t[i]) + 1;
       q[i]=ux+1;
       t[i]=ux*uy+(e[i] > 1.0);
   }
   printf(" ***  *** no.3 *** \n");
   for(i=0;i<20;i++){
     printf(" o= %ld  p= %ld  q= %ld \n",o[i],p[i],q[i]);
     printf(" r= %lu  s= %lu  t= %lu \n",r[i],s[i],t[i]);
   }
exit (0);
}
