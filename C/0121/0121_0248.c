#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int main()
{

	double DS01=1,DS02=2,DS03=3,DS04=4,DS05=5;
	long int IS01=1,IS02=2,IS03=3;
	long int i,j;


	for(j=1;j<=10;j++)
	{
		DS01=DS01+DS03+DS04;
		for(i=1;i<=10;i++)
		{
			if (j >  5)
			{
				DS02=DS02+DS03+DS05;
			}
		}
	}


	printf("  ****  (1) **** \n");
	printf("     TEST FOR THE SIDE-EFFECT OF MINIMIZE \n");
	printf(" DS01=%g  DS02=%g  I=%ld  J=%ld  \n",DS01,DS02,i,j);


	for(j=1;j<=10;j++)
	{
		for(i=1;i<=10;i++)
		{
			if (j <= 2)  goto LBL_21 ;
			if (j >= 9)  goto LBL_22 ;
			if (j == 5)  goto LBL_21 ;
			if (i <= 5)  goto LBL_23 ;
			goto LBL_20;
LBL_21:
			;
			IS01=IS01+1;
			goto LBL_20;
LBL_22:
			;
			if (j == 10)  goto LBL_23 ;
			IS02=IS02+1;
			goto LBL_20;
LBL_23:
			;
			IS03=IS03+1;
LBL_20:
			;
		}
	}

	printf("  ***  (2) ***\n");
	printf("  RC  OR  RC   %ld \n",IS01);
	printf("  RC AND  RC   %ld \n",IS02);
	printf("  RC AND  EX   %ld \n",IS03);
	exit (0);
}
