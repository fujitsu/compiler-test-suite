#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
  {
    int        j1=0;
    double     q1=1.000000000000010;
    double     d[10]={3.0,3.0,3.0,2.5,2.5,2.5,2.5,2.5,2.5,2.5};
    double     d2[10];
    int        i;

    j1+=1;
    for(i=0;i<10;i++) {
      if( fmod(i,2)==0 ) {
	d2[i]=d[j1];
	j1=9-j1;
      } else if ( fmod(i,2)==1 ) {
	q1+=1;
	d2[i]=d[(int)q1];
      }
    }

    for(i=0;i<10;i++) printf("%g ",d[i]);
    printf("\n%g %d\n",q1,j1);
    exit(0);
  }
