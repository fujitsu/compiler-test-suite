#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int  init();

float     xh[15],zh[15],uu[15][15][10],vv[15][15][10],
          x[15][15][10],y[15][15][10];
int       iv;

int main()
  {
    int       iv1,a,b,bl,ib1,jl1,ex,sp,l;
    int       i2,j2;
    int       i,j,k;
    
    printf("##  ##\n");

    bl=2*1;
    a=6-bl+2;
    b=a-5;
    ib1=10;
    ex=ib1;
    jl1=ib1;
    sp=ex;
    init();
    iv1=iv-2;
    for(i=0;i<iv1;i++)
      {
        l=iv-i;  
        b=i/bl;
      }
    x[l][1][1]=x[iv][1][1]-pow(a*b,ex);
    for(i=0;i<15;i++) {
      for(j=0;j<15;j++) {
        for(k=0;k<10;k++) printf("%f ",x[i][j][k]);
        printf("\n");
      }        
    }        

    for(i=iv;i<ib1;i++)
      {
      i2=i+1;
      xh[i]=.5*(x[i][1][1]+x[i2][1][1]);
      for(j=0;j<jl1;j++)
        {
          j2=j+1;
          xh[1]=.25*(y[i][j][1]+y[i2][i2][1]+y[1][j2][1]);
          xh[2]=xh[1]+sp*uu[1][j][1];
          zh[2]=zh[1]+sp*vv[1][j][1];
        }
      }
    for(i=0;i<15;i++) printf("%f ",zh[i]);
    printf("\n");
    for(i=0;i<15;i++) printf("%f ",xh[i]);
    printf("\n");
    exit(0);
  }

int  init()
  {
    int     i,j,k;

    iv=12;
    for(i=0;i<10;i++) {
      for(j=0;j<15;j++) {
        for(k=0;k<15;k++) {
          x[k][j][i]=2.;
          y[k][j][i]=2.;
          uu[k][j][i]=2.;
          vv[k][j][i]=2.;
        }
      }        
    }        
    for(i=0;i<15;i++) {
      zh[i]=3.;
      xh[i]=4.;
    }
  }
