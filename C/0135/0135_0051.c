#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
  {
    float   a[100],b[100][100];
    int     i,j,k;

    for(i=0;i<100;i++) {
      a[i]=1.0;
      for(j=0;j<100;j++) b[i][j]=1.1;
    }

    for(i=2;i<100;i++) {
      a[i]=i;
      a[i]=a[i]+1;
      a[i]=a[i-2]+i;
      for(j=0;j<100;j++) b[j][i]=sqrt(j);
    }
    for(i=0;i<100;i++) {
      printf("%f ",a[i]);
      k=i%9;
      if(k==0 && i!=0) printf("\n");
    }
    for(i=0;i<100;i++) {
      for(j=0;j<100;j++) {
        printf("%f ",b[i][j]);
        k=j%9;
        if(k==0 && j!=0) printf("\n");
      }
      k=i%9;
      if(k==0 && i!=0) printf("\n");
    }
    exit(0);
  }  

