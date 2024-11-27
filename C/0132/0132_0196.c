#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,s;
	union utag {
		int u1;
		int u2;
	} u;
	
	
	
	for(i=0;i<10;i++)
	{
		s=i;
	}
	printf("%d\n",s) ;
	
	
	
	for(i=0;i<10;i++)
	{
		if(i==5) s=i;
	}
	printf("%d\n",s) ;
	
	
	
	for(i=0;i<10;i++)
	{
		u.u1=i;
	}
	
	
	
	for(i=0;i<10;i++)
	{
		u.u1=i;
	}
	printf("%d\n",u.u2) ;
	exit (0);
}
