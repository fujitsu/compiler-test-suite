#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra,rb,s;  
static struct st2{
        unsigned long int y[10];
} ls;  
int main()
{
	static unsigned long int i;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
 	        rb.x[i]=1.0;
 	        s.x[i]=1.0;
                ls.y[i]=1;
	}
	for(i=0;i<10;i++)
	{
		if (i > 4)
		{
			s.x[0] = ra.x[i] + 1.0 ;
		}
		else
		{
			s.x[1] = rb.x[i] + 1.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			ls.y[0] = ra.x[i] == i+1 ;
		}
		else
		{
			ls.y[1] = rb.x[i] == ra.x[i] ;
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" REAL DATA ***\n");
	printf(" s[0] = 11.0 , s[1] = 2.0\n");
	printf(" s[0] = %g  , s[1] = %g\n",s.x[0],s.x[1]);
	printf(" ** LOGICAL DATA ***\n");
	printf(" ls[0] = t   , ls[0] = f\n");
	printf(" ls[0] = %ld , ls[1] = %ld\n",ls.y[0],ls.y[1]);
	exit (0);
}
