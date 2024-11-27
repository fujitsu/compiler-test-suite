#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct stag {
		int s1[10];
	}s={
		0,0,0,0,0,0,0,0,0,0	};
	union utag {
		int u1[10];
		int u2[10];
	}u={
		99,99,99,99,99,99,99,99,99,99	};
	int *ps,*pu;
	int i,j,k;
	printf(" loop1 \n");
	ps=s.s1;
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			*ps=j;
		}
		for(k=0;k<10;k++)
		{
			printf("%d",s.s1[k]);
			printf(" ");
		}
		ps=ps+1;
		printf("\n");
	}
	printf(" loop2 \n");
	ps=s.s1;
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			if(j<5)
			{
				*ps=10*i+j;
			}
		}
		for(k=0;k<10;k++)
		{
			printf("%d",s.s1[k]);
			printf(" ");
		}
		ps=ps+1;
		printf("\n");
	}
	printf(" loop3 \n");
	pu=u.u1;
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			*pu=j;
		}
		for(k=0;k<10;k++)
		{
			printf("%d",u.u2[k]);
			printf(" ");
		}
		pu=pu+1;
		printf("\n");
	}
	printf(" loop4 \n");
	pu=u.u1;
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			if(j<5)
			{
				*pu=10*i+j;
			}
		}
		for(k=0;k<10;k++)
		{
			printf("%d",u.u2[k]);
			printf(" ");
		}
		pu=pu+1;
		printf("\n");
	}
	exit (0);
}
