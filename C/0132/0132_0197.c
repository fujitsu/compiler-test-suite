#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,s[10];
	union utag {
		int u1[10];
		int u2[10];
	} u;
	
	
	
	for(i=0;i<10;i++)
	{
		s[1]=i;
	}
	printf("%d\n",s[1]) ;
	
	
	
	for(i=0;i<10;i++)
	{
		if(i==5) s[2]=i;
	}
	printf("%d\n",s[2]) ;
	
	
	
	for(i=0;i<10;i++)
	{
		u.u1[3]=i;
	}
	
	
	
	for(i=0;i<10;i++)
	{
		u.u1[4]=i;
	}
	printf("%d\n",u.u2[4]) ;
	exit (0);
}
