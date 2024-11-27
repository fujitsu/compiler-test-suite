#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	int l[10],m[10];
	for(i=0;i<10;i++) l[i]=i;
	for(i=0;i<10;i++) m[i]=0;
	for(i=0;i<10;i++)
	{
		if(i>=5)
		{
			m[i]=l[i];
			if(i>=7)
			{
				m[i]=l[i]+1;
			}
		}
	}
	for(i=0;i<10;i++) printf("%d ",m[i]);
	printf("\n");
	exit (0);
}
