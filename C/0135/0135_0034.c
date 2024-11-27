#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int i;
  float      a[50],t;

  for(i=0;i<50;i++) a[i]=1.;
  a[0]=a[1]=1.0;
  for(i=2;i<50;i+=3) {    
    a[i]=(float)i;
    t=a[i]*cos(i);
    a[i]=t+a[i-2];
  }
  printf("## a ##\n");
  for(i=0;i<50;i++) printf("%f ",a[i]);
  printf("\n");
  exit(0);
}
