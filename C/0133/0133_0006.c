#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int s1006(long int i,long int j,long int k,long int l,long int m,long int *n);
int main()
{
	long int n ;
	s1006(0,0,0,0,0,&n);
	printf("n => %ld\n",n);
	exit (0);
}
int s1006(long int i,long int j,long int k,long int l,long int m,
long int *n)
{
	if ( i >  0 )
	{
		if ( j >  0 )
		{
			*n=1;
		}
		else {
			if (j==0)
			{
				*n=2;
			}
			else
			{
				*n=3;
			}
		}
	}
	else
	{
		if ( k == 0 )
		{
			if ( l == 0 )
			{
				if ( m == 0 )
				{
					*n=5;
				}
			}
			else
			{
				*n=6;
			}
		}
		else
		{
			*n=7;
		}
	}
	return 0;
}
