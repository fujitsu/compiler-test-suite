#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 100

int main()
{
	double a1[N],a2[N],a3[N],a4[N],a5[N],a6[N],a7[N],a8[N],a9[N],
	x1[N],x2[N],x3[N],x4[N],x5[N],x6[N],x7[N],x8[N],x9[N] ;
	static unsigned long int l[N],m=0 ;
	long int i,j,ii ;
	for(i=0;i<N/4;i++)
	{
		l[i]=0 ;
		l[i+N/4]=1 ;
		l[i+N/2]=0 ;
		l[i+N/4+N/2]=1 ;
	}
	for(i=0;i<N;i++)
	{
		a1[i] = (double)i + 0.1 ;
		a2[i] = a1[i] - 0.9 ;
		a3[i] = sqrt((double)i) ;
		a4[i] = a3[i] - 3.8 ;
		a5[i] = 1.0 ;
		a6[i] = 100.0 ;
		a7[i] = 3.7 ;
		a8[i] = -9.8 ;
		a9[i] = 9.9 ;
		x2[i] = 0;
	}
	for(i=0;i<N;i++)
	{
		if (l[i] == 1)
		{
			x1[i] = (a1[i] + a2[i]) / 3.0 ;
		}
		else
		{
			x1[i] = 1.0 ;
		}
		j = 1 ;
		for(ii=0;ii<N;ii++)
		{
			if (m == 1)
			{
				x2[j] = a2[ii] ;
				j = j + 1 ;
			}
			x3[ii] = 1 ;
			x4[0] = x3[ii] ;
		}
		x4[i] = x1[i] + x2[i] + 2.4 ;
		x5[i] = sqrt(fabs(a4[i])) ;
		x6[i] = sqrt(fabs(a5[i])) ;
		x7[i] = a5[i] - a6[i] ;
		x7[i] = a7[i] - 0.1 ;
		x8[i] = a6[i] + a7[i] + a8[i] ;
		if (l[i] == 1)
		{
			x9[i] = a9[i] ;
		}
		else
		{
			x9[i] = a3[i] ;
		}
		if (i < 10)
		{
			a1[i] = x1[i] - 0.2 ;
		}
		else if(i > 9 && i < 20)
		{
			a2[i] = x2[i] ;
		}
		else if(i > 19 && i <30)
		{
			a3[i] = x3[i] + 0.5 ;
		}
		else if(i > 29 && i < 40)
		{
			a4[i] = x4[i] + 5.3 ;
		}
		else if(i > 39 && i <50)
		{
			a5[i] = sqrt(fabs(x5[i])) ;
		}
		else if(i > 49 && i < 70)
		{
			a6[i] = x6[i] ;
		}
		else if(i >69 && i < 90)
		{
			a7[i] = x7[i] ;
		}
		else if(i > 89)
		{
			a8[i] = x8[i] ;
		}
		if (a3[i] > 5.0)
		{
			a9[i] = x9[i] + 0.1 ;
		}
		else
		{
			a9[i] = x9[i] - 0.1 ;
		}
	}
	for(i=0;i<N;i++)
	{
		printf("x1[%2ld]=%8.3f  x2[%2ld]=%8.3f  x3[%2ld]=%8.3f \n",
		    i,x1[i],i,x2[i],i,x3[i]) ;
		printf("x4[%2ld]=%8.3f  x5[%2ld]=%8.3f  x6[%2ld]=%8.3f \n",
		    i,x4[i],i,x5[i],i,x6[i]) ;
		printf("x7[%2ld]=%8.3f  x8[%2ld]=%8.3f  x9[%2ld]=%8.3f \n",
		    i,x7[i],i,x8[i],i,x9[i]) ;
	}
	exit (0);
}
