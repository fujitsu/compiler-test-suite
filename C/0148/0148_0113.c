#include <stdlib.h>
#include <math.h>
#include <stdio.h>








int main()
{
	float a[20];
	float b[20]={
				121.0,426.0,345.0,4536.0,7453.0,567.0,8.0,35.0,
				                      645.0,645.0,125.0,45.0,246.0,78.0,90623.0,676.0,
				                      875.0,3565.0,674.0,3456.0		};
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	float work1 ;
	long int i ;
	work1 = 99999.0;
	for(i=0;i<20;i++)
	{
		a[i] = b[i] ;
		if (work1 - a[i] <= 1.0) goto lbl_10;
		if (work1 - a[i] >  1.0) goto lbl_20;
lbl_10:
		;
		work1 = a[i] ;
lbl_20:
		;
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,a[i],i,b[i]);
	}
	printf("work1 = %g\n",work1);
	work1 = 0.0;
	for(i=0;i<20;i++)
	{
		a[i] = b[i] ;
		if (a[i] - work1 >= 1.0) goto lbl_40;
		if (a[i] - work1 <  1.0) goto lbl_30;
lbl_30:
		;
		work1 = a[i] ;
lbl_40:
		;
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,a[i],i,b[i]);
	}
	printf("work1 = %g\n",work1);
	work1 = 0.0;
	for(i=0;i<20;i++)
	{
		a[i] = b[i] ;
		if (a[i] > work1)
		{
			work1 = a[i] ;
		}
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,a[i],i,b[i]);
	}
	printf("work1 = %g\n",work1);
	work1 = 999999.0;
	for(i=0;i<20;i++)
	{
		a[i] = b[i] ;
		if (a[i] <= work1)
		{
			work1 = a[i] ;
		}
	}
	for(i=0;i<20;i++){
		printf("a[%ld] = %g , b[%ld] = %g\n",i,a[i],i,b[i]);
	}
	printf("work1 = %g\n",work1);
	exit (0);
}
