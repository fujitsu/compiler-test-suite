#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "001.h"
#define R4S3(i) r4s3[i-1]
#define R4A1(i) r4a1[i-1]
#define R4A2(i) r4a2[i-1]
#define L4S3(i) l4s3[i-1]
#define L4A1(i) l4a1[i-1]
#define L4A2(i) l4a2[i-1]
float r4s3[10],r4a1[10],r4a2[10];
unsigned long int l4s3[10],l4a1[10],l4a2[10];
int main()
{
	long int i,jj;
	float r4s1;
        float r4s0;
	unsigned long int l4s1,l4s2;
	r4s1=1.0;
	l4s1=1.0;
	l4s2=1.0;
	for(i=0;i< 10;i++){
		r4s3[i]=1.0;
		r4a2[i]=1.0;
		l4s3[i]=1.0;
	}
	r4a1[0]=1.0;
	r4a1[1]=2.0;
	r4a1[2]=3.0;
	r4a1[3]=4.0;
	r4a1[4]=5.0;
	r4a1[5]=6.0;
	r4a1[6]=7.0;
	r4a1[7]=8.0;
	r4a1[8]=9.0;
	r4a1[9]=10.0;
	for(i=0;i< 10;){
		l4a1[i]=1.0;
		l4a2[i]=0.0;
		i=i+2;
	}
	for(i=1;i< 10;){
		l4a1[i]=0.0;
		l4a2[i]=1.0;
		i=i+2;
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(i=1;i<=10;i++)
	{
		r4s1=r4a1[i-1]+1.0;
		l4s1=l4a1[i-1];
		r4s3[0]=r4a2[i-1]+r4a1[i-1];
		l4s3[0]=l4a1[i-1] && l4a2[i-1];
	}
	printf(" ** TEST NO. 1 **\n");
	printf("r4s1= %g,l4s1= %lu,r4s3[0]= %g,l4s3[0]= %lu\n",                                   r4s1,l4s1,r4s3[0],l4s3[0]);
	for(i=1;i<=10;i++)
	{
		r4s1=r4a1[i-1]+r4s1;
		r4a2[i-1]=r4s1;
		r4s1=r4a1[i-1]+r4s1;
		l4s1=!(l4a1[i-1]);
		l4a2[i-1]=l4s1;
		l4s1=!(l4a1[i-1]);
		r4s3[0]=r4a1[i-1]+2.0;
		r4s3[0]=r4a1[i-1]+2.0;
		l4s3[0]=l4a1[i-1] && l4a2[i-1];
		l4s3[0]=l4a1[i-1] && l4a2[i-1];
	}
	printf(" ** TEST NO. 1-1 **\n");
	printf("r4s1= %g,l4s1= %lu,r4s3[0]= %g,l4s3[0]= %lu\n",
	    r4s1,l4s1,r4s3[0],l4s3[0]);
	for(i=1;i<=10;i++){
		printf("r4a2[%ld]= %g,l4a2[%ld]= %lu\n",i-1,r4a2[i-1],i-1,l4a2[i-1]);
	}
	for(i=1;i<=10;i++)
	{
		r4s1=i;
		l4s1=l4a2[i-1];
		r4s3[0]=r4a1[i-1]+r4a2[i-1];
		l4s3[0]=!(l4a1[i-1]);
		if (l4a1[i-1]==1.0)
		{
			r4a1[i-1]=r4s1;
			l4a2[i-1]=l4s1;
			l4a1[i-1]=l4s3[0] && l4a2[i-1];
		}
		else
		{
			r4a1[i-1]=r4s1;
			l4a2[i-1]=l4s1;
			l4a1[i-1]=l4s3[0] && l4a2[i-1];
		}
		r4s1=r4s1+r4a1[i-1];
		r4a2[i-1]=r4s1;
		r4s3[2]=r4s3[1]+r4s3[0];
		l4s3[2]=l4s3[0] && l4s3[1];
	}
	printf(" ** TEST NO. 1 - 2 **\n");
	printf("r4s1= %g,l4s1= %lu,r4s3[0]= %g,l4s3[0]= %lu\n",
	    r4s1,l4s1,r4s3[0],l4s3[0]);
	for(i=1;i<=10;i++){
		printf("r4a2[%ld]= %g,r4a1[%ld]= %g\n",i-1,r4a2[i-1],i-1,r4a1[i-1]);
		printf("l4a1[%ld]= %lu,l4a2[%ld]= %lu\n",i-1,l4a1[i-1],i-1,l4a2[i-1]);
	}
	for(i=1;i<=10;i++)
	{
		l4s1=l4a1[i-1] && l4a2[i-1];
		if (l4s1==1)
		{
			l4s1=!(l4a1[i-1]);
			l4s3[0]=l4s1 && l4a2[i-1];
		}
		else
		{
			l4s1=l4a1[i-1] && l4a2[i-1];
			l4s3[1]=l4s1;
		}
		r4s1=r4a1[i-1]+r4a2[i-1];
		if(r4s1 >  0)
		{
			r4s1=r4a1[i-1]+1.0;
			r4s3[0]=r4a2[i-1]+r4a1[i-1];
		}
		else
		{
			r4s1=r4a1[i-1]+2.0;
			r4s3[1]=r4a2[i-1]+r4s1;
		}
	}
	printf(" ** TEST NO. 1 - 3 **\n");
	printf("l4s1= %lu,l4s3[0]= %lu,r4s1= %g,r4s3[0]= %g\n",
	    l4s1,l4s3[0],r4s1,r4s3[0]);
	for(i=1;i<=10;i++)
	{
		if (l4a1[i-1]==1)
		{
			r4s1=r4a1[i-1]+r4a2[i-1];
			l4s1=!(l4a1[i-1]);
			if (l4s1==1)
			{
				r4a1[i-1]=r4s1;
				l4a1[i-1]=l4s1;
			}
		}
		else
		{
			r4s1=r4a1[i-1]+2.;
			l4s1=l4a1[i-1] && l4a2[i-1];
			if (r4s1 >  0)
			{
				r4a1[i-1]=r4s1;
				l4a1[i-1]=l4s1;
			}
		}
	}
	for(i=1;i<=10;i++)
	{
		if (l4a1[i-1]==1)
		{
			r4s3[0]=r4a1[i-1]+4.0;
			l4s3[0]=!(l4a1[i-1]);
			if (l4s3[0]==1)
			{
				r4a2[i-1]=r4s3[0];
				l4a2[i-1]=l4s3[0];
			}
		}
		else
		{
			r4s3[0]=r4a1[i-1]+2.0;
			l4s3[0]=l4a1[i-1] && l4a2[i-1];
			if (r4s3[0] >  0)
			{
				r4a1[i-1]=r4s3[1];
				l4a1[i-1]=l4s3[1];
			}
		}
	}
	printf(" ** TETS NO. 1 - 4 **\n");
	printf("r4s1= %g,l4s1= %lu\n",r4s1,l4s1);
	for(i=1;i<=10;i++){
		printf("r4a1[%ld]= %g,l4a1[%ld]= %lu,r4a2[%ld]= %g,l4a2[%ld]= %lu\n",                   i-1,r4a1[i-1],i-1,
		    l4a1[i-1],i-1,r4a2[i-1],i-1,l4a2[i-1]);
	}
	printf("r4s3[0]= %g,l4s3[0]= %lu,r4s3[1]= %g,l4s3[1]=%lu\n",                            r4s3[0],l4s3[0],r4s3[1],l4s3[1]);
	for(i=1;i<=10;i++)
	{
		if (l4a1[i-1]==1)
		{
			r4s1=r4a1[i-1]+r4a2[i-1];
			l4s1=!(l4a1[i-1]);
			if (r4s1 >  0) goto LBL_60;
			if (l4s1==1) goto LBL_60;
		}
		else
		{
			r4s1=r4a2[i-1]-r4a1[i-1];
			l4s1=l4a1[i-1] && l4a2[i-1];
			if (r4s1 >  0) goto LBL_60;
			if (l4s1==1) goto LBL_60;
		}
LBL_60:
		;
	}
	for(i=1;i<=10;i++)
	{
		if (l4a1[i-1]==1)
		{
			r4s3[0]=r4a1[i-1]+r4a2[i-1];
			l4s3[0]=!(l4a1[i-1]);
			if (r4s3[0] >  0) goto LBL_61;
			if (l4s3[0]==1) goto LBL_61;
		}
		else
		{
			r4s3[0]=r4a2[i-1]-r4a1[i-1];
			l4s3[0]=l4a1[i-1] && l4a2[i-1];
			if (r4s3[0] >  0) goto LBL_61;
			if (l4s3[0]==1) goto LBL_61;
		}
LBL_61:
		;
	}
	printf(" ** TETS NO. 1 - 5 **\n");
	printf("r4s1= %g,l4s1= %lu,r4s3[0]= %g,l4s3[0]= %lu\n",
	    r4s1,l4s1,r4s3[0],l4s3[0]);
	r4s0=10.0;
	for(i=1;i<=r4s0;i++)
	{
		if (r4s1 >  0) r4s1=r4a1[i-1]+1.0;
		else r4s1=r4a1[i-1]+2.0;
		r4s1=r4a1[i-1]+i;
		if (r4s1 >  10) goto LBL_70;
LBL_70:
		;
	}
	printf(" ** TEST NO. 1 - 6 **\n");
	printf("r4s1= %g\n",r4s1);
	for(jj=1;jj<=10;jj++)
	{
		for(i=1;i<=10;i++)
		{
			if (l4a1[i-1]==1)
			{
				r4s1=r4a1[i-1]+r4a2[i-1];
				l4s1=l4a1[i-1] && l4a2[i-1];
			}
			else
			{
				r4s1=r4a1[i-1]-r4a2[i-1];
				l4s1=l4a1[i-1] && l4a2[i-1];
			}
			r4a1[i-1]=r4s1;
		}
		for(i=1;i<=10;i++)
		{
			if (l4a1[i-1]==1)
			{
				r4s3[0]=r4a1[i-1]+r4s1;
				l4s3[0]=l4a1[i-1] && l4a2[i-1];
			}
			else
			{
				r4s3[0]=r4a1[i-1]-r4a2[i-1];
				l4s3[0]=!(l4a2[i-1]);
			}
			r4a1[i-1]=r4s1;
		}
		for(i=1;i<=10;i++)
		{
			if (l4a2[i-1]==1)
			{
				l4s1=l4a1[i-1] && l4a2[i-1];
				l4s2=!(l4a2[i-1]);
			}
			else
			{
				l4s1=l4a1[i-1];
				l4s2=!(l4a2[i-1]);
			}
			l4a1[i-1]=l4s1;
		}
	}
	printf(" ** TEST NO. 1 - 7 **\n");
	printf("r4s1= %g,l4s1= %lu,l4s2= %lu\n",r4s1,l4s1,l4s2);
	for(i=1;i<=10;i++){
		printf("r4a1[%ld]= %g,l4a1[%ld]= %lu\n",i-1,r4a1[i-1],i-1,l4a1[i-1]);
	}
	printf("r4s3[0]= %g,l4s3[0]= %lu\n",r4s3[0],l4s3[0]);
	for(i=1;i<=10;i++)
	{
		if (l4a1[i-1]==1)
		{
			r4s1=r4a1[i-1]+1.0;
			l4s1=!(l4a2[i-1]);
			if (r4s1 >  0) goto LBL_90;
		}
		else
		{
			r4s1=r4a2[i-1]+1.0;
			l4s1=l4a1[i-1] && l4a2[i-1];
			if (l4s1==1) goto LBL_90;
		}
		r4a1[i-1]=r4s1;
		l4a1[i-1]=l4s1 && l4a2[i-1];
LBL_90:
		;
	}
	printf(" ** TEST NO. 1 - 8 **\n");
	printf("r4s1= %g,l4s1= %lu\n",r4s1,l4s1);
	for(i=1;i<=10;i++){
		printf("r4a1[%ld]= %g,l4a1[%ld]= %lu\n",i-1,r4a1[i-1],i-1,l4a1[i-1]);
	}
	exit (0);
}
