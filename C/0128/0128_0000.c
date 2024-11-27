#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define M 100
int main()
{
	int          ia[100],ib[100],ic[100],i,n;
	long int     la[100],lb[100];
	unsigned int ua[100],ub[100],uc[100];
	float        ra[100],rb[100];
	double       da[100];

	for(i=0;i<100;i++){
		ua[i]=i%2;
		ub[i]=i%2;
		uc[i]=0;
		ra[i]=100-i;
		rb[i]=100-i;
		ia[i]=i;
		ib[i]=100-i;
		ic[i]=i+1;
	}
	printf(" *** test 1 *** \n");

	for(i=0;i<100;i++) {
		if (ia[i]>ib[i]!=ic[i])
			uc[i] = ua[i] && (ub[i]||ia[i]);
			else
			uc[i] = ub[i] || !ua[i];
		if (uc[i] & 1)
			la[i] = ra[i] + rb[i];
			else
			la[i] = ra[i] - rb[i];
	}

	for(i=0;i<100;i++){
		printf(" %8d ",la[i]) ;
		n=i%7;
		if(n==0 && i != 0)printf("\n");
	}
	printf(" \n");
	printf(" *** test 2 *** \n");

	for(i=0;i<M;i+=1)
	{
		ic[i] = ib[i] + rb[i] ;
		if (ub[i]=i^M>>2&ia[i])
			da[i] = ib[i] | ic[i] ;
			else
			if (ub[i]=i|M<<2^ic[i])
				da[i] = ib[i] & ic[i] ;
	}

	for(i=0;i<100;i++){
		printf(" %f ",da[i]) ;
		n=i%5;
		if(n==0 && i != 0)printf("\n");
	}
printf("\n");
exit (0);
}
