#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int i,j,ary[10]={
	0,1,2,3,4,5,6,7,8,9};
int *s,p[10]={
	0,1,2,3,4,5,6,7,8,9};
union utag {
	int *u1;
	int *u2;
} u;
int main()
{
	
	
	
	s=&ary[0];
	for(i=0;i<9;i++)
	{
		s=s+1;
	}
	printf("%d\n",*s) ;
	
	
	
	s=&ary[0];
	for(i=0;i<10;i++)
	{
		if(i<5)
		{
			s=&p[i];
		}
	}
	printf("%d\n",*s) ;
	
	
	
	u.u1=&(ary[0]);
	for(i=0;i<9;i++)
	{
		u.u1=&p[i];
	}
	
	
	
	u.u2=&(ary[0]);
	for(i=0;i<10;i++)
	{
		u.u1=&p[i];
	}
	printf("%d\n",*(u.u2)) ;
	exit (0);
}
