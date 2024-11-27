#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int        i,j,m;
  double     c=0.0;

  printf("##  ##\n");
  for(i=1;i<10;i++) {
    c+=i;
    if(i<=5) {
      for(j=1;j<10;j++) {
	for(m=1;m<10;m++) {
	  c=c/m/j+c;
	}	  
      }
    } else {
      for(j=9;j>2;j--) {
	c=j/j*i;
      }
      for(m=9;m>2;m--) {
	c=(m*m/c)/c+j;
      }
    }      
  }
  printf("c ==> %g \n",c);
  exit(0);
}
