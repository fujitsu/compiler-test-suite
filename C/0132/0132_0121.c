#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int n[100],i,k;
	union {
		int k;
		int m;
	}m={0};

	for(i=0;i<100;i++)
	{
		k=i;
		n[i]=100/(i+1);
	}
	for(i=0;i<100;i++) printf("%d ",n[i]);
	printf("\n");
	if(n[0]==0) printf("k= %d \n",k);
	exit (0);
}
