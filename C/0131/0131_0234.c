#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int ax[]);

int main(){
	long int a[10] = {
		4,9,8,5,18,7,24,9,10,11	};
	long int d ;
	int  i , j = 2 ;
	for (i=0 ; i<10 ; i++){
		a[i] = a[i] / j ;
		j++ ;
	}
	d = sub(a) ;
	printf("%ld \n",d) ;
	exit (0);
}
int sub(ax)
long int ax[] ;
{
	long int b[10],dx=0;
	int      i ;
	for(i=0;i<10;i++){
		switch(ax[i]){
		case 1:
			continue ;
		case 2:
			break ;
		case 3:
			dx = dx + ax[i];
		default:
			break ;
		}
	}
	return dx;
}
