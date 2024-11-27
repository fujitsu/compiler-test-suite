#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int        i,m=50;
  float      a[50],t;

  for(i=2;i<m;i++) a[i]=.0;
  a[0]=a[1]=1.0;
  for(i=2;i<m;i+=3) {    
    a[i]=i;
    if(a[i] > (m/2) ) {
      a[i]+=m;
      a[i]=a[i-2]-m;
    }
    a[i]=m/11;
    a[i]=a[i-2]-m;
  }
  printf("## a ##\n");
  for(i=0;i<50;i++) printf("%f ",a[i]);
  printf("\n");
  exit(0);
}
