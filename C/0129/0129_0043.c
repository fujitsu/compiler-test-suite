#include <math.h>
#include  <stdio.h>
#include  <stdlib.h>
int getnum(int step);


typedef struct sss{
	int a1,a2,a3;
	short b1,b2,b3;
	long c1,c2,c3;
	struct sss *ptr;
	double d1,d2,d3;
}ST;
int test(ST *a, int stp);
int main()
{
	getnum(600);
	getnum(601);
	getnum(602);
	getnum(603);
exit (0);
}

int getnum(step)
int step;
{
	ST *a,*rcsv();
	a=rcsv(step);
	if(test(a,step)==1)
		printf("ok\n");
	else
		printf("ng\n");
	return 0;
}
ST *rcsv(stp)
int stp;
{
	ST *sp;
	sp = (ST*)malloc(sizeof(ST));
	if(sp==NULL) { printf("malloc error\n");exit(1); }
	if(--stp==0) {
		sp->c2=0x12345;
		return(sp);
	}
	sp->ptr=rcsv(stp);
	return(sp);
}
int test(a,stp)
ST *a;
int stp;
{
	if(--stp==0){
		if(a->c2==0x12345)
			return 1;
		else
			return 0;
	}
	return(test(a->ptr,stp));
}
