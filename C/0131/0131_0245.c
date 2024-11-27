#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef struct  data1{     
	double  a1[10];
	double  b1[10];
}x1;
typedef struct  data2{     
	double  a2;
	double  b2;
}x2[10];
int main(){                    
	struct data1 y1;
	struct data2 y2[10];
	int     i;
	double  j=10.0;
	for(i=1;i<=10;i++){
		y1.a1[i-1]=j;
		y1.b1[i-1]=j+1.0;
		y2[i-1].a2=j;
		y2[i-1].b2=j+1.0;
		j=j+1.0;
	}
	for(i=0;i<10;i++){          
	  printf("%lg \n",y1.a1[i]);
	  printf("%lg \n",y1.b1[i]);
	  printf("%lg \n",y2[i].a2);
	  printf("%lg \n",y2[i].b2);
	}
	exit (0);
}
