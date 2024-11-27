#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra,rb,s;  
static struct st2{
        unsigned long int y[10];
} ls,lb;  
int main()
{
	static unsigned long int i;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
 	        rb.x[i]=1.0;
 	        s.x[i]=0.0;
                ls.y[i]=1;
	}
	for(i=0;i<10;i++)
	{
		s.x[0]  = ra.x[i] ;
		rb.x[i] = s.x[1] + ra.x[i] ;
		s.x[2]  = rb.x[i] ;
	}
	s.x[3]  = s.x[0] + s.x[1] + s.x[2] ;
	for(i=0;i<10;i++)
	{
		ls.y[0] = ra.x[i] == i+1 ;
		lb.y[i] = ls.y[1] ;
		ls.y[2] = 1 ^ lb.y[i] ;
	}
	ls.y[3] = ls.y[0] && ls.y[1] && ls.y[2] ;
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA  ***\n");
	printf(" s[0]=10.0 , s[1]=0.0 , s[2]=10.0 , s[3]=20.0\n");
	printf(" s[0]=%g   , s[1]=%g  , s[2]=%g   , s[3]=%g\n",
	    s.x[0],s.x[1],s.x[2],s.x[3]);
	printf(" ** LOGICAL DATA ****\n");
	printf(" ls[0]=t  , ls[1]=t  , ls[2]=f   , ls[3]=f\n");
	printf(" ls[0]=%ld, ls[1]=%ld, ls[2]=%ld , ls[3]=%ld\n",
	    ls.y[0],ls.y[1],ls.y[2],ls.y[3]);
	exit (0);
}
