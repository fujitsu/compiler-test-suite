#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int        i,n=1,m=50;
  float      a[50],t;

  a[0]=a[1]=1.0;
  for(i=2;i<m;i++) {    
    a[i]=(float)i;
    if(a[i] > m/2 ) {
      t=a[n]*sin(n);
      n++;
      a[i]=n+a[i-2]+t;
    }
  }
  printf("## a ##\n");
  for(i=0;i<50;i++) printf("%f ",a[i]);
  printf("\n");
  exit(0);
}
