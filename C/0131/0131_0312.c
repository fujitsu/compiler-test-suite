#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[10] = {
		3,5,77,45,2,34,78,23,32,47	};
	long int sumfst,sumscd,sumtrd;
	int      i;
	sumfst=0;
	sumscd=0;
	sumtrd=0;
	for(i=0;i<10;i++){
		if(a[i]<10){
			sumfst+=a[i];
		}
		else
			if(a[i]<50){
				sumscd+=a[i];
			}
		else
				if(a[i]<100){
					sumtrd+=a[i];
				}
	}
	printf ("sumfst=%ld \n",sumfst);
	printf ("sumscd=%ld \n",sumscd);
	printf ("sumtrd=%ld \n",sumtrd);
	exit (0);
}
