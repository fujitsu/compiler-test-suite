#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 
 
 
#include <string.h>
  typedef struct{
               float real,imag;
              }COMPLEX;
  typedef struct{
               float real,imag;
              }COMPLEX8;
  typedef struct{
               double dreal,dimag;
              }COMPLEX16;
  typedef struct{
               long double qreal,qimag;
              }COMPLEX32;
#define I1A(i) i1a[i-1]
#define I1B(i) i1b[i-1]
#define I1C(i) i1c[i-1]
#define I1D(i) i1d[i-1]
#define I1E(i) i1e[i-1]
#define I1F(i) i1f[i-1]
#define I2A(i) i2a[i-1]
#define I2B(i) i2b[i-1]
#define I2C(i) i2c[i-1]
#define I2D(i) i2d[i-1]
#define I2E(i) i2e[i-1]
#define I2F(i) i2f[i-1]
#define I3A(i) i3a[i-1]
#define I3B(i) i3b[i-1]
#define I3C(i) i3c[i-1]
#define I3D(i) i3d[i-1]
#define I3E(i) i3e[i-1]
#define I3F(i) i3f[i-1]
#define I4A(i) i4a[i-1]
#define I4B(i) i4b[i-1]
#define I4C(i) i4c[i-1]
#define I4D(i) i4d[i-1]
#define I4E(i) i4e[i-1]
#define I4F(i) i4f[i-1]
#define I5A(i) i5a[i-1]
#define I5B(i) i5b[i-1]
#define I5C(i) i5c[i-1]
#define I5D(i) i5d[i-1]
#define I5E(i) i5e[i-1]
#define I5F(i) i5f[i-1]
#define I6A(i) i6a[i-1]
#define I6B(i) i6b[i-1]
#define I6C(i) i6c[i-1]
#define I6D(i) i6d[i-1]
#define I6E(i) i6e[i-1]
#define I6F(i) i6f[i-1]
#define R1A(i) r1a[i-1]
#define R1B(i) r1b[i-1]
#define R1C(i) r1c[i-1]
#define R1D(i) r1d[i-1]
#define R1E(i) r1e[i-1]
#define R1F(i) r1f[i-1]
#define R2A(i) r2a[i-1]
#define R2B(i) r2b[i-1]
#define R2C(i) r2c[i-1]
#define R2D(i) r2d[i-1]
#define R2E(i) r2e[i-1]
#define R2F(i) r2f[i-1]
#define R3A(i) r3a[i-1]
#define R3B(i) r3b[i-1]
#define R3C(i) r3c[i-1]
#define R3D(i) r3d[i-1]
#define R3E(i) r3e[i-1]
#define R3F(i) r3f[i-1]
#define R4A(i) r4a[i-1]
#define R4B(i) r4b[i-1]
#define R4C(i) r4c[i-1]
#define R4D(i) r4d[i-1]
#define R4E(i) r4e[i-1]
#define R4F(i) r4f[i-1]
#define R5A(i) r5a[i-1]
#define R5B(i) r5b[i-1]
#define R5C(i) r5c[i-1]
#define R5D(i) r5d[i-1]
#define R5E(i) r5e[i-1]
#define R5F(i) r5f[i-1]
#define R6A(i) r6a[i-1]
#define R6B(i) r6b[i-1]
#define R6C(i) r6c[i-1]
#define R6D(i) r6d[i-1]
#define R6E(i) r6e[i-1]
#define R6F(i) r6f[i-1]
 struct array1 {
  long int i1a[10],i1b[10],i1c[10],i1d[10],i1e[10],i1f[10];
  float    r1a[10],r1b[10],r1c[10],r1d[10],r1e[10],r1f[10];
   } strl1;
 struct array2 {
  long int i2a[257],i2b[257],i2c[257],i2d[257],i2e[257],i2f[257];
  long int i3a[257],i3b[257],i3c[257],i3d[257],i3e[257],i3f[257];
  float    r2a[257],r2b[257],r2c[257],r2d[257],r2e[257],r2f[257];
  float    r3a[257],r3b[257],r3c[257],r3d[257],r3e[257],r3f[257];
   } strl2;
 struct array3 {
  long int i4a[513],i4b[513],i4c[513],i4d[513],i4e[513],i4f[513];
  long int i5a[513],i5b[513],i5c[513],i5d[513],i5e[513],i5f[513];
  float    r4a[513],r4b[513],r4c[513],r4d[513],r4e[513],r4f[513];
  float    r5a[513],r5b[513],r5c[513],r5d[513],r5e[513],r5f[513];
   } strl3;
 struct array4 {
  long int i6a[1025],i6b[1025],i6c[1025],i6d[1025],i6e[1025],i6f[1025];
  float    r6a[1025],r6b[1025],r6c[1025],r6d[1025],r6e[1025],r6f[1025];
   }  strl4;
int subb (struct array1 *p1, struct array2 *p2, struct array3 *p3, struct array4 *p4, int n);
int suba (struct array1 *p1, struct array2 *p2, struct array3 *p3, struct array4 *p4, int n);
int 
main (void)
  {
 
    int I,i;
    int n;
   printf(" ***  ***\n");
   for(i=0;i<10;i++)
   {
      strl1.i1a[i]=1;
      strl1.i1b[i]=1;
      strl1.i1c[i]=1;
      strl1.i1d[i]=1;
      strl1.i1e[i]=1;
      strl1.i1f[i]=1;
      strl1.r1a[i]=1;
      strl1.r1b[i]=1;
      strl1.r1c[i]=1;
      strl1.r1d[i]=1;
      strl1.r1e[i]=1;
      strl1.r1f[i]=1;
       }
   for(i=0;i<257;i++)
   {
      strl2.i2a[i]=2;
      strl2.i2b[i]=2;
      strl2.i2c[i]=2;
      strl2.i2d[i]=2;
      strl2.i2e[i]=2;
      strl2.i2f[i]=2;
      strl2.i3a[i]=3;
      strl2.i3b[i]=3;
      strl2.i3c[i]=3;
      strl2.i3d[i]=3;
      strl2.i3e[i]=3;
      strl2.i3f[i]=3;
      strl2.r2a[i]=2;
      strl2.r2b[i]=2;
      strl2.r2c[i]=2;
      strl2.r2d[i]=2;
      strl2.r2e[i]=2;
      strl2.r2f[i]=2;
      strl2.r3a[i]=3;
      strl2.r3b[i]=3;
      strl2.r3c[i]=3;
      strl2.r3d[i]=3;
      strl2.r3e[i]=3;
      strl2.r3f[i]=3;
       }
   for(i=0;i<513;i++)
   {
      strl3.i4a[i]=4;
      strl3.i4b[i]=4;
      strl3.i4c[i]=4;
      strl3.i4d[i]=4;
      strl3.i4e[i]=4;
      strl3.i4f[i]=4;
      strl3.i5a[i]=5;
      strl3.i5b[i]=5;
      strl3.i5c[i]=5;
      strl3.i5d[i]=5;
      strl3.i5e[i]=5;
      strl3.i5f[i]=5;
      strl3.r4a[i]=4;
      strl3.r4b[i]=4;
      strl3.r4c[i]=4;
      strl3.r4d[i]=4;
      strl3.r4e[i]=4;
      strl3.r4f[i]=4;
      strl3.r5a[i]=5;
      strl3.r5b[i]=5;
      strl3.r5c[i]=5;
      strl3.r5d[i]=5;
      strl3.r5e[i]=5;
      strl3.r5f[i]=5;
       }
   for(i=0;i<1025;i++)
   {
      strl4.i6a[i]=6;
      strl4.i6b[i]=6;
      strl4.i6c[i]=6;
      strl4.i6d[i]=6;
      strl4.i6e[i]=6;
      strl4.i6f[i]=6;
      strl4.r6a[i]=6;
      strl4.r6b[i]=6;
      strl4.r6c[i]=6;
      strl4.r6d[i]=6;
      strl4.r6e[i]=6;
      strl4.r6f[i]=6;
       }
   n=10;
 
   suba(&strl1,&strl2,&strl3,&strl4,n);
   subb(&strl1,&strl2,&strl3,&strl4,n);
   for(i=0;i<10;i++)
     {
     printf(" %ld %ld %ld %ld \n",strl1.i1a[i],strl1.i1b[i],
              strl1.i1c[i],strl1.i1d[i]);
     printf(" %g %g %g %g \n",strl1.r1a[i],strl1.r1b[i],
              strl1.r1c[i],strl1.r1d[i]);
     printf(" %ld %ld %ld %ld \n",strl2.i2a[i],strl2.i2b[i],
              strl2.i2c[i],strl2.i2d[i]);
     printf(" %g %g %g %g \n",strl2.r2a[i],strl2.r2b[i],
              strl2.r2c[i],strl2.r2d[i]);
     printf(" %ld %ld %ld %ld \n",strl2.i3a[i],strl2.i3b[i],
              strl2.i3c[i],strl2.i3d[i]);
     printf(" %g %g %g %g \n",strl2.r3a[i],strl2.r3b[i],
              strl2.r3c[i],strl2.r3d[i]);
     printf(" %ld %ld %ld %ld \n",strl3.i4a[i],strl3.i4b[i],
              strl3.i4c[i],strl3.i4d[i]);
     printf(" %g %g %g %g \n",strl3.r4a[i],strl3.r4b[i],
              strl3.r4c[i],strl3.r4d[i]);
     printf(" %ld %ld %ld %ld \n",strl3.i5a[i],strl3.i5b[i],
              strl3.i5c[i],strl3.i5d[i]);
     printf(" %g %g %g %g \n",strl3.r5a[i],strl3.r5b[i],
              strl3.r5c[i],strl3.r5d[i]);
     printf(" %ld %ld %ld %ld \n",strl4.i6a[i],strl4.i6b[i],
              strl4.i6c[i],strl4.i6d[i]);
     printf(" %g %g %g %g \n",strl4.r6a[i],strl4.r6b[i],
              strl4.r6c[i],strl4.r6d[i]);
     }
exit (0);
  }
 int 
suba (struct array1 *p1, struct array2 *p2, struct array3 *p3, struct array4 *p4, int n)
  {
   int       i;
   for (i=0;i<n;i++)
   {
    p1->i1a[i]= p4->r6a[i];
    p1->i1b[i]= p4->r6b[i];
    p1->i1c[i]= p4->r6c[i];
    p1->i1d[i]= p4->r6d[i];
    p1->i1e[i]= p4->r6e[i];
    p1->i1f[i]= p4->r6f[i];
    p2->i2a[i]= p3->r5a[i];
    p2->i2b[i]= p3->r5b[i];
    p2->i2c[i]= p3->r5c[i];
    p2->i2d[i]= p3->r5d[i];
    p2->i2e[i]= p3->r5e[i];
    p2->i2f[i]= p3->r5f[i];
    p2->i3a[i]= p3->r4a[i];
    p2->i3b[i]= p3->r4b[i];
    p2->i3c[i]= p3->r4c[i];
    p2->i3d[i]= p3->r4d[i];
    p2->i3e[i]= p3->r4e[i];
    p2->i3f[i]= p3->r4f[i];
    p3->i4a[i]= p2->r3a[i];
    p3->i4b[i]= p2->r3b[i];
    p3->i4c[i]= p2->r3c[i];
    p3->i4d[i]= p2->r3d[i];
    p3->i4e[i]= p2->r3e[i];
    p3->i4f[i]= p2->r3f[i];
    p3->i5a[i]= p2->r2a[i];
    p3->i5b[i]= p2->r2b[i];
    p3->i5c[i]= p2->r2c[i];
    p3->i5d[i]= p2->r2d[i];
    p3->i5e[i]= p2->r2e[i];
    p3->i5f[i]= p2->r2f[i];
    p4->i6a[i]= p1->r1a[i];
    p4->i6b[i]= p1->r1b[i];
    p4->i6c[i]= p1->r1c[i];
    p4->i6d[i]= p1->r1d[i];
    p4->i6e[i]= p1->r1e[i];
    p4->i6f[i]= p1->r1f[i];
 
   }
   for (i=0;i<n;i++)
   {
    p4->r6a[i]= p1->i1a[i];
    p4->r6b[i]= p1->i1b[i];
    p4->r6c[i]= p1->i1c[i];
    p4->r6d[i]= p1->i1d[i];
    p4->r6e[i]= p1->i1e[i];
    p4->r6f[i]= p1->i1f[i];
    p3->r5a[i]= p2->i2a[i];
    p3->r5b[i]= p2->i2b[i];
    p3->r5c[i]= p2->i2c[i];
    p3->r5d[i]= p2->i2d[i];
    p3->r5e[i]= p2->i2e[i];
    p3->r5f[i]= p2->i2f[i];
    p3->r4a[i]= p2->i3a[i];
    p3->r4b[i]= p2->i3b[i];
    p3->r4c[i]= p2->i3c[i];
    p3->r4d[i]= p2->i3d[i];
    p3->r4e[i]= p2->i3e[i];
    p3->r4f[i]= p2->i3f[i];
    p2->r3a[i]= p3->i4a[i];
    p2->r3b[i]= p3->i4b[i];
    p2->r3c[i]= p3->i4c[i];
    p2->r3d[i]= p3->i4d[i];
    p2->r3e[i]= p3->i4e[i];
    p2->r3f[i]= p3->i4f[i];
    p3->r4a[i]= p3->i5a[i];
    p3->r4b[i]= p3->i5b[i];
    p3->r4c[i]= p3->i5c[i];
    p3->r4d[i]= p3->i5d[i];
    p3->r4e[i]= p3->i5e[i];
    p3->r4f[i]= p3->i5f[i];
    p1->r1a[i]= p4->i6a[i];
    p1->r1b[i]= p4->i6b[i];
    p1->r1c[i]= p4->i6c[i];
    p1->r1d[i]= p4->i6d[i];
    p1->r1e[i]= p4->i6e[i];
    p1->r1f[i]= p4->i6f[i];
 
   }
  }
 int subb (struct array1 *p1, struct array2 *p2, struct array3 *p3, struct array4 *p4, int n)
  {
   int       i;
   int       m;
   for (i=0;i<n;i++)
   {
    if (p1->i1a[i]= 6)
    {
    p1->i1a[i]=p4->r6a[i]*p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p1->i1b[i]=p4->r6b[i]+p3->r5a[i]*p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p1->i1c[i]=p4->r6c[i]+p3->r5a[i]+p3->r4a[i]*p2->r3a[i]+p2->r2a[i];
    p1->i1d[i]=p4->r6d[i]+p3->r5a[i]+p3->r4a[i]+p2->r3a[i]*p2->r2a[i];
    p1->i1e[i]=p4->r6e[i]+p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p1->i1f[i]=p4->r6f[i]+p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    }
 
   }
   for (i=0;i<n;i++)
   {
    if (p1->r1a[i]= 1)
    {
    p1->r1a[i]=p1->i1a[i]*p1->i1a[i]+p1->i1a[i]+p1->i1a[i]+p1->i1a[i];
    p1->r1b[i]=p1->i1b[i]*p1->i1a[i]+p1->i1a[i]+p1->i1a[i]+p1->i1a[i];
    p1->r1c[i]=p1->i1c[i]*p1->i1a[i]+p1->i1a[i]+p1->i1a[i]+p1->i1a[i];
    p1->r1d[i]=p1->i1d[i]*p1->i1a[i]+p1->i1a[i]+p1->i1a[i]+p1->i1a[i];
    p1->r1e[i]=p1->i1e[i]*p1->i1a[i]+p1->i1a[i]+p1->i1a[i]+p1->i1a[i];
    p1->r1f[i]=p1->i1f[i]*p1->i1a[i]+p1->i1a[i]+p1->i1a[i]+p1->i1a[i];
    }
  
   }
   m=n*n*2+57;
   for (i=0;i<m;i++)
   {
    if (p2->i2a[i]= 5)
    {
    p2->i2a[i]=p3->r5a[i]*p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p2->i2b[i]=p3->r5b[i]*p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p2->i2c[i]=p3->r5c[i]*p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p2->i2d[i]=p3->r5d[i]*p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p2->i2e[i]=p3->r5e[i]*p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    p2->i2f[i]=p3->r5f[i]*p3->r5a[i]+p3->r4a[i]+p2->r3a[i]+p2->r2a[i];
    }
  
   }
   for (i=0;i<m;i++)
   {
    if (p2->i3a[i]= 4)
    {
    p2->i3a[i]=p3->r4a[i]*p3->r4a[i]*p3->r4a[i]+p2->r2a[i]+p2->r2a[i];
    p2->i3b[i]=p3->r4b[i]*p3->r4a[i]*p3->r4a[i]+p2->r2a[i]+p2->r2a[i];
    p2->i3c[i]=p3->r4c[i]*p3->r4a[i]*p3->r4a[i]+p2->r2a[i]+p2->r2a[i];
    p2->i3d[i]=p3->r4d[i]*p3->r4a[i]*p3->r4a[i]+p2->r2a[i]+p2->r2a[i];
    p2->i3e[i]=p3->r4e[i]*p3->r4a[i]*p3->r4a[i]+p2->r2a[i]+p2->r2a[i];
    p2->i3f[i]=p3->r4f[i]*p3->r4a[i]*p3->r4a[i]+p2->r2a[i]+p2->r2a[i];
    }
  
   }
   for (i=0;i<m;i++)
   {
    if (p2->r3a[i]= 3)
    {
    p2->r3a[i]=p2->i3a[i]*p2->i3a[i]+p2->i3a[i]+p2->i3a[i]+p2->i2a[i];
    p2->r3b[i]=p2->i3b[i]*p2->i3a[i]+p2->i3a[i]+p2->i3a[i]+p2->i2a[i];
    p2->r3c[i]=p2->i3c[i]*p2->i3a[i]+p2->i3a[i]+p2->i3a[i]+p2->i2a[i];
    p2->r3d[i]=p2->i3d[i]*p2->i3a[i]+p2->i3a[i]+p2->i3a[i]+p2->i2a[i];
    p2->r3e[i]=p2->i3e[i]*p2->i3a[i]+p2->i3a[i]+p2->i3a[i]+p2->i2a[i];
    p2->r3f[i]=p2->i3f[i]*p2->i3a[i]+p2->i3a[i]+p2->i3a[i]+p2->i2a[i];
    }
  
   }
   for (i=0;i<m;i++)
   {
    if (p2->r2a[i]= 2)
    {
    p2->r2a[i]=p2->i2a[i]*p2->i2a[i]+p2->i2a[i]+p2->i2a[i]+p2->i2a[i];
    p2->r2b[i]=p2->i2b[i]*p2->i2a[i]+p2->i2a[i]+p2->i2a[i]+p2->i2a[i];
    p2->r2c[i]=p2->i2c[i]*p2->i2a[i]+p2->i2a[i]+p2->i2a[i]+p2->i2a[i];
    p2->r2d[i]=p2->i2d[i]*p2->i2a[i]+p2->i2a[i]+p2->i2a[i]+p2->i2a[i];
    p2->r2e[i]=p2->i2e[i]*p2->i2a[i]+p2->i2a[i]+p2->i2a[i]+p2->i2a[i];
    p2->r2f[i]=p2->i2f[i]*p2->i2a[i]+p2->i2a[i]+p2->i2a[i]+p2->i2a[i];
    }
  
   }
   m=n*n*5+13;
   for (i=0;i<m;i++)
   {
    if (p3->i4a[i]= 3)
    {
    p3->i4a[i]=p4->r6a[i]*p3->r5a[i]*p3->r4a[i]*p3->r4a[i]+p3->r5a[i];
    p3->i4b[i]=p4->r6b[i]*p3->r5a[i]*p3->r4a[i]*p3->r4a[i]+p4->r6a[i];
    p3->i4c[i]=p4->r6c[i]*p3->r5a[i]*p3->r4a[i]*p3->r4a[i]+p3->r5a[i];
    p3->i4d[i]=p4->r6d[i]*p3->r5a[i]*p3->r4a[i]*p3->r4a[i]+p4->r6a[i];
    p3->i4e[i]=p4->r6e[i]*p3->r5a[i]*p3->r4a[i]*p3->r4a[i]+p3->r5a[i];
    p3->i4f[i]=p4->r6f[i]*p3->r5a[i]*p3->r4a[i]*p3->r4a[i]+p4->r6a[i];
    }
  
   }
   for (i=0;i<m;i++)
   {
    if (p3->r4a[i]= 4)
    {
    p3->r4a[i]=p3->i4a[i]*p3->i4a[i]*p3->i4a[i]+p3->i5a[i]+p4->i6a[i];
    p3->r4b[i]=p3->i4b[i]*p3->i4a[i]*p3->i4a[i]+p4->i6a[i]+p3->i5a[i];
    p3->r4c[i]=p3->i4c[i]*p3->i4a[i]*p3->i4a[i]+p3->i5a[i]+p4->i6a[i];
    p3->r4d[i]=p3->i4d[i]*p3->i4a[i]*p3->i4a[i]+p4->i6a[i]+p3->i5a[i];
    p3->r4e[i]=p3->i4e[i]*p3->i4a[i]*p3->i4a[i]+p3->i5a[i]+p4->i6a[i];
    p3->r4f[i]=p3->i4f[i]*p3->i4a[i]*p3->i4a[i]+p4->i6a[i]+p3->i5a[i];
    }
  
   }
   for (i=0;i<m;i++)
   {
    if (p3->i5a[i]= 2)
    {
    p3->i5a[i]=p4->r6a[i]*p3->r5a[i]*p4->r6a[i]*p3->r5a[i]*p3->r5a[i];
    p3->i5b[i]=p4->r6b[i]*p3->r5a[i]*p3->r5a[i]*p4->r6a[i]*p3->r5a[i];
    p3->i5c[i]=p4->r6c[i]*p3->r5a[i]*p4->r6a[i]*p3->r5a[i]*p4->r6a[i];
    p3->i5d[i]=p4->r6d[i]*p3->r5a[i]*p3->r5a[i]*p4->r6a[i]*p4->r6a[i];
    p3->i5e[i]=p4->r6e[i]*p3->r5a[i]*p4->r6a[i]*p3->r5a[i]*p3->r5a[i];
    p3->i5f[i]=p4->r6f[i]*p3->r5a[i]*p3->r5a[i]*p4->r6a[i]*p3->r5a[i];
    }
  
   }
   for (i=0;i<m;i++)
   {
    if (p3->r5a[i]= 5)
    {
    p3->r5a[i]=p3->i5a[i]*p3->i5a[i]+p3->i4a[i]+p3->i5a[i]+p3->i5a[i];
    p3->r5b[i]=p3->i5b[i]*p3->i5a[i]+p3->i4a[i]+p3->i5a[i]+p4->i6a[i];
    p3->r5c[i]=p3->i5c[i]*p3->i5a[i]+p3->i4a[i]+p3->i5a[i]+p3->i5a[i];
    p3->r5d[i]=p3->i5d[i]*p3->i5a[i]+p3->i4a[i]+p4->i6a[i]+p4->i6a[i];
    p3->r5e[i]=p3->i5e[i]*p3->i5a[i]+p3->i4a[i]+p4->i6a[i]+p3->i5a[i];
    p3->r5f[i]=p3->i5f[i]*p3->i5a[i]+p3->i4a[i]+p4->i6a[i]+p4->i6a[i];
    }
  
   }
   m=n*n*n+25;
   for (i=0;i<m;i++)
   {
    if (p4->i6a[i]= 1)
    {
    p4->i6a[i]=p4->r6a[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i];
    p4->i6b[i]=p4->r6b[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i];
    p4->i6c[i]=p4->r6c[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i];
    p4->i6d[i]=p4->r6d[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i];
    p4->i6e[i]=p4->r6e[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i];
    p4->i6f[i]=p4->r6f[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i]*p4->r6a[i];
    }
  
   }
   for (i=0;i<m;i++)
   {
    if (p4->r6a[i]= 6)
    {
    p4->r6a[i]=p4->i6a[i]*p4->i6a[i]-p4->i6a[i]+p4->i6a[i]+p4->i6a[i];
    p4->r6b[i]=p4->i6b[i]*p4->i6a[i]+p4->i6a[i]+p4->i6a[i]-p4->i6a[i];
    p4->r6c[i]=p4->i6c[i]*p4->i6a[i]+p4->i6a[i]-p4->i6a[i]+p4->i6a[i];
    p4->r6d[i]=p4->i6d[i]*p4->i6a[i]+p4->i6a[i]+p4->i6a[i]+p4->i6a[i];
    p4->r6e[i]=p4->i6e[i]*p4->i6a[i]+p4->i6a[i]-p4->i6a[i]+p4->i6a[i];
    p4->r6f[i]=p4->i6f[i]*p4->i6a[i]+p4->i6a[i]-p4->i6a[i]-p4->i6a[i];
    }
  
   }
  }
