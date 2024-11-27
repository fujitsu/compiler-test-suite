#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float a[20];
        float b[20];
} tag1;
int main()
{

	float work1 ;
	long int i ;
	work1 = 99999.0;
	tag1.b[0]=121.0;
        tag1.b[1]=426.0;
        tag1.b[2]=345.0;
        tag1.b[3]=4536.0;
        tag1.b[4]=7453.0;
        tag1.b[5]=567.0;
        tag1.b[6]=8.0;
        tag1.b[7]=35.0;
        tag1.b[8]=645.0;
        tag1.b[9]=645.0;
        tag1.b[10]=125.0;
        tag1.b[11]=45.0;
        tag1.b[12]=246.0;
        tag1.b[13]=78.0;
        tag1.b[14]=90623.0;
        tag1.b[15]=676.0;
        tag1.b[16]=875.0;
        tag1.b[17]=3565.0;
        tag1.b[18]=674.0;
        tag1.b[19]=3456.0;
	for(i=0;i<20;i++)
	{
		tag1.a[i] = tag1.b[i] ;
		if (work1 - tag1.a[i] <= 1.0) goto lbl_10;
		if (work1 - tag1.a[i] >  1.0) goto lbl_20;
lbl_10:
		;
		work1 = tag1.a[i] ;
lbl_20:
		;
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,tag1.a[i],i,tag1.b[i]);
	}
	printf("work1 = %g\n",work1);
	work1 = 0.0;
	for(i=0;i<20;i++)
	{
		tag1.a[i] = tag1.b[i] ;
		if (tag1.a[i] - work1 >= 1.0) goto lbl_40;
		if (tag1.a[i] - work1 <  1.0) goto lbl_30;
lbl_30:
		;
		work1 = tag1.a[i] ;
lbl_40:
		;
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,tag1.a[i],i,tag1.b[i]);
	}
	printf("work1 = %g\n",work1);
	work1 = 0.0;
	for(i=0;i<20;i++)
	{
		tag1.a[i] = tag1.b[i] ;
		if (tag1.a[i] > work1)
		{
			work1 = tag1.a[i] ;
		}
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,tag1.a[i],i,tag1.b[i]);
	}
	printf("work1 = %g\n",work1);
	work1 = 999999.0;
	for(i=0;i<20;i++)
	{
		tag1.a[i] = tag1.b[i] ;
		if (tag1.a[i] <= work1)
		{
			work1 = tag1.a[i] ;
		}
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,tag1.a[i],i,tag1.b[i]);
	}
	printf("work1 = %g\n",work1);
	exit (0);
}

