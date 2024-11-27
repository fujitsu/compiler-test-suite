#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define M 100
int main()
{
        int i,n;
  
	struct st1 {
		int          ia[100],ib[100],ic[100],i,n;
		long int     la[100],lb[100];
		unsigned int ua[100],ub[100],uc[100];
		float        ra[100],rb[100];
		double       da[100];
	} t;
	
	for(i=0;i<100;i++){
		t.ua[i]=i%2;
		t.ub[i]=i%2;
		t.uc[i]=0;
		t.ra[i]=100-i;
		t.rb[i]=100-i;
		t.ia[i]=i;
		t.ib[i]=100-i;
		t.ic[i]=i+1;
	}
	printf(" *** test 1 *** \n");

	for(i=0;i<100;i++) {
		if (t.ia[i]>t.ib[i]!=t.ic[i])
			t.uc[i] = t.ua[i] && (t.ub[i]||t.ia[i]);
			else
			t.uc[i] = t.ub[i] || !t.ua[i];
		if (t.uc[i] & 1)
			t.la[i] = t.ra[i] + t.rb[i];
			else
			t.la[i] = t.ra[i] - t.rb[i];
	}

	for(i=0;i<100;i++){
		printf(" %8d ",t.la[i]) ;
		n=i%7;
		if(n==0 && i != 0)printf("\n");
	}
	printf(" \n");
	printf(" *** test 2 *** \n");

	for(i=0;i<M;i+=1)
	{
		t.ic[i] = t.ib[i] + t.rb[i] ;
		if (t.ub[i]=i^M>>2&t.ia[i])
			t.da[i] = t.ib[i] | t.ic[i] ;
			else
			if (t.ub[i]=i|M<<2^t.ic[i])
				t.da[i] = t.ib[i] & t.ic[i] ;
	}

	for(i=0;i<100;i++){
		printf(" %f ",t.da[i]) ;
		n=i%5;
		if(n==0 && i != 0)printf("\n");
	}
printf("\n");
exit (0);
}
