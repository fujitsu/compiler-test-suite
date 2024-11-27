#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 
 
 
#include <string.h>
 struct array {
 long int i1a[5][5],i1b[5][5],i1c[5][5],i1d[5][5],i1e[5][5];
 long int i2a[5][5],i2b[5][5],i2c[5][5],i2d[5][5],i2e[5][5];
 long int i3a[5][5],i3b[5][5],i3c[5][5],i3d[5][5],i3e[5][5];
 long int i4a[5][5],i4b[5][5],i4c[5][5],i4d[5][5],i4e[5][5];
 double   r1a[5][5],r1b[5][5],r1c[5][5],r1d[5][5],r1e[5][5];
 double   r2a[5][5],r2b[5][5],r2c[5][5],r2d[5][5],r2e[5][5];
 double   r3a[5][5],r3b[5][5],r3c[5][5],r3d[5][5],r3e[5][5];
 double   r4a[5][5],r4b[5][5],r4c[5][5],r4d[5][5],r4e[5][5];
   } str;
int sub(struct array *p);
int main()
  {
   long int i,j;
   printf(" ***  ***\n");
   for(j=0;j<5;j++)
   {
     for(i=0;i<5;i++)
     {
        str.i1a[i][j]=1;
        str.i1b[i][j]=2;
        str.i1c[i][j]=3;
        str.i1d[i][j]=4;
        str.i1e[i][j]=5;
        str.i2a[i][j]=1;
        str.i2b[i][j]=2;
        str.i2c[i][j]=3;
        str.i2d[i][j]=4;
        str.i2e[i][j]=5;
        str.i3a[i][j]=1;
        str.i3b[i][j]=2;
        str.i3c[i][j]=3;
        str.i3d[i][j]=4;
        str.i3e[i][j]=5;
        str.i4a[i][j]=1;
        str.i4b[i][j]=2;
        str.i4c[i][j]=3;
        str.i4d[i][j]=4;
        str.i4e[i][j]=5;
        str.r1a[i][j]=1.0;
        str.r1b[i][j]=2.0;
        str.r1c[i][j]=3.0;
        str.r1d[i][j]=4.0;
        str.r1e[i][j]=5.0;
        str.r2a[i][j]=1.0;
        str.r2b[i][j]=2.0;
        str.r2c[i][j]=3.0;
        str.r2d[i][j]=4.0;
        str.r2e[i][j]=5.0;
        str.r3a[i][j]=1.0;
        str.r3b[i][j]=2.0;
        str.r3c[i][j]=3.0;
        str.r3d[i][j]=4.0;
        str.r3e[i][j]=5.0;
        str.r4a[i][j]=1.0;
        str.r4b[i][j]=2.0;
        str.r4c[i][j]=3.0;
        str.r4d[i][j]=4.0;
        str.r4e[i][j]=5.0;
     }
   }
   for(j=0;j<5;j++)
     {
     for(i=0;i<5;i++)
       {
    printf(" %ld %ld %ld ",str.i1a[i][j],str.i1b[i][j],str.i1c[i][j]);
    printf(" %ld %ld \n  ",str.i1d[i][j],str.i1e[i][j]);
    printf(" %e %e %e ",str.r1a[i][j],str.r1b[i][j],str.r1c[i][j]);
    printf(" %e %e \n  ",str.r1d[i][j],str.r1e[i][j]);
    printf(" %ld %ld %ld ",str.i2a[i][j],str.i2b[i][j],str.i2c[i][j]);
    printf(" %ld %ld \n  ",str.i2d[i][j],str.i2e[i][j]);
    printf(" %e %e %e ",str.r2a[i][j],str.r2b[i][j],str.r2c[i][j]);
    printf(" %e %e \n  ",str.r2d[i][j],str.r2e[i][j]);
    printf(" %ld %ld %ld ",str.i3a[i][j],str.i3b[i][j],str.i3c[i][j]);
    printf(" %ld %ld \n  ",str.i3d[i][j],str.i3e[i][j]);
    printf(" %e %e %e ",str.r3a[i][j],str.r3b[i][j],str.r3c[i][j]);
    printf(" %e %e \n  ",str.r3d[i][j],str.r3e[i][j]);
    printf(" %ld %ld %ld ",str.i4a[i][j],str.i4b[i][j],str.i4c[i][j]);
    printf(" %ld %ld \n  ",str.i4d[i][j],str.i4e[i][j]);
    printf(" %e %e %e ",str.r4a[i][j],str.r4b[i][j],str.r4c[i][j]);
    printf(" %e %e \n  ",str.r4d[i][j],str.r4e[i][j]);
       }
     }
   sub(&str);
exit (0);
  }
int sub(p)
  struct array *p;
{
  long int i,j;
  for(i=0;i<5;i++)
    {
    for(j=0;j<5;j++)
      {
      p->i1a[i][j] = p->i1b[i][j];
      p->i1b[i][j] = p->i1c[i][j];
      p->i1c[i][j] = p->i1d[i][j];
      p->i1d[i][j] = p->i1e[i][j];
      p->i1e[i][j] = p->i1a[i][j];
      p->i2a[i][j] = p->i2b[i][j];
      p->i2b[i][j] = p->i2c[i][j];
      p->i2c[i][j] = p->i2d[i][j];
      p->i2d[i][j] = p->i2e[i][j];
      p->i2e[i][j] = p->i2a[i][j];
      p->i3a[i][j] = p->i3b[i][j];
      p->i3b[i][j] = p->i3c[i][j];
      p->i3c[i][j] = p->i3d[i][j];
      p->i3d[i][j] = p->i3e[i][j];
      p->i3e[i][j] = p->i3a[i][j];
      p->i4a[i][j] = p->i4b[i][j];
      p->i4b[i][j] = p->i4c[i][j];
      p->i4c[i][j] = p->i4d[i][j];
      p->i4d[i][j] = p->i4e[i][j];
      p->i4e[i][j] = p->i4a[i][j];
      p->r1a[i][j] = p->r1b[i][j];
      p->r1b[i][j] = p->r1c[i][j];
      p->r1c[i][j] = p->r1d[i][j];
      p->r1d[i][j] = p->r1e[i][j];
      p->r1e[i][j] = p->r1a[i][j];
      p->r2a[i][j] = p->r2b[i][j];
      p->r2b[i][j] = p->r2c[i][j];
      p->r2c[i][j] = p->r2d[i][j];
      p->r2d[i][j] = p->r2e[i][j];
      p->r2e[i][j] = p->r2a[i][j];
      p->r3a[i][j] = p->r3b[i][j];
      p->r3b[i][j] = p->r3c[i][j];
      p->r3c[i][j] = p->r3d[i][j];
      p->r3d[i][j] = p->r3e[i][j];
      p->r3e[i][j] = p->r3a[i][j];
      p->r4a[i][j] = p->r4b[i][j];
      p->r4b[i][j] = p->r4c[i][j];
      p->r4c[i][j] = p->r4d[i][j];
      p->r4d[i][j] = p->r4e[i][j];
      p->r4e[i][j] = p->r4a[i][j];
      }
    }
   for(j=0;j<5;j++)
     {
     for(i=0;i<5;i++)
       {
    printf(" %ld %ld %ld ",p->i1a[i][j],p->i1b[i][j],p->i1c[i][j]);
    printf(" %ld %ld \n  ",p->i1d[i][j],p->i1e[i][j]);
    printf(" %e %e %e ",p->r1a[i][j],p->r1b[i][j],p->r1c[i][j]);
    printf(" %e %e \n  ",p->r1d[i][j],p->r1e[i][j]);
    printf(" %ld %ld %ld ",p->i2a[i][j],p->i2b[i][j],p->i2c[i][j]);
    printf(" %ld %ld \n  ",p->i2d[i][j],p->i2e[i][j]);
    printf(" %e %e %e ",p->r2a[i][j],p->r2b[i][j],p->r2c[i][j]);
    printf(" %e %e \n  ",p->r2d[i][j],p->r2e[i][j]);
    printf(" %ld %ld %ld ",p->i3a[i][j],p->i3b[i][j],p->i3c[i][j]);
    printf(" %ld %ld \n  ",p->i3d[i][j],p->i3e[i][j]);
    printf(" %e %e %e ",p->r3a[i][j],p->r3b[i][j],p->r3c[i][j]);
    printf(" %e %e \n  ",p->r3d[i][j],p->r3e[i][j]);
    printf(" %ld %ld %ld ",p->i4a[i][j],p->i4b[i][j],p->i4c[i][j]);
    printf(" %ld %ld \n  ",p->i4d[i][j],p->i4e[i][j]);
    printf(" %e %e %e ",p->r4a[i][j],p->r4b[i][j],p->r4c[i][j]);
    printf(" %e %e \n  ",p->r4d[i][j],p->r4e[i][j]);
       }
     }
    printf("\n");
}
