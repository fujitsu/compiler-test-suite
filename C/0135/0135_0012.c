#include <stdlib.h>

#include <stdio.h>
#include <math.h>

int main()
{
  short      h[24];
  int        i,n,j=1175;
  int        p=1,a=1,c;
  float      l[24],b=0;

  for(i=0;i<24;i++) 
    {
      p=pow(2,i);
      for(n=0,p=2;n<i;n++) p*=2;
      printf("P ==> %d\n",p);
      c=(j&p);
      if(c!=b) {
	l[i]=1;
	h[i]=1;
      } else {
	l[i]=0;
	h[i]=0;
      }
    }      

  printf("##  ##\n H ==> ");
  for(i=0;i<24;i++) printf("%d ",h[i]);
  printf("\nL ==> ");
  for(i=0;i<24;i++) printf("%f ",l[i]);
  printf("\n");
  exit(0);
}


