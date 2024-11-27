#include <stdlib.h>
#include <math.h>
#include <stdio.h>

static struct st1{
        unsigned long int x[10];
} l,lb,ls;
static struct st2{
        float x[10];
} ra,rb,s;
int main()
{
	static long int          i ;
        ra.x[0]=1.;
        ra.x[1]=2.;
        ra.x[2]=3.;
        ra.x[3]=4.;
        ra.x[4]=5.;
        ra.x[5]=6.;
        ra.x[6]=7.;
        ra.x[7]=8.;
        ra.x[8]=9.;
        ra.x[9]=10.;
        for(i=0;i<10;i++)
        { 
		lb.x[i]=1;
		ls.x[i]=0;
		rb.x[i]=5.;
                s.x[i]=0;
	}
        for(i=0;i<10;i++)
        {
 	        l.x[i]=1;
 	        l.x[i+1]=0;
                i++;
	}
	for(i=0;i<10;i++){
		if (l.x[i]==1){
			s.x[0] = ra.x[i]+1.;
			rb.x[i]= s.x[1];
			s.x[2] = rb.x[i]+1.;
		}
	}
	for(i=0;i<10;i++){
		if (l.x[i]==1){
			if (ra.x[i]==i){
				ls.x[1]=ra.x[i];
			}
			lb.x[i]=ls.x[1];
			ls.x[2]=1^lb.x[i];
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(i=0;i<10;i++){
		printf(" ** REAL DATA ** S(0) = 10.  =  %f \n",s.x[0]);
	}
	for(i=0;i<10;i++){
		printf(" ** REAL DATA ** S(1) =  0.  =  %f \n",s.x[1]);
	}
	for(i=0;i<10;i++){
		printf(" ** REAL DATA ** S(2) =  1.  =  %f \n",s.x[2]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(0) = .TRUE.  =  %ud \n",ls.x[0]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(1) = .FALSE. =  %ud \n",ls.x[1]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(2) = .TRUE.  =  %ud \n",ls.x[2]);
	}
	exit (0);
}
