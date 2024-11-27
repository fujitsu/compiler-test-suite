#include <stdlib.h>
#include <math.h>
#include <stdio.h>

static struct st1{
        float x[10];
} ra,rb,s;
static struct st2{
        unsigned long int y[10];
} l,ls;  
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
	for(i=0;i<10;i++){
	  rb.x[i]=5.;
	}
	
	for(i=0;i<10;i++){
		if (i == 0){
			s.x[0] = ra.x[i] + 1. ;
		}
		else if(i == 4){
			s.x[1] = rb.x[i] + 1. ;
		}
		else if(i == 9){
			s.x[2] = ra.x[i] + rb.x[i] ;
		}
	}
	for(i=0;i<10;i++){
		if (i == 0){
			ls.y[0]=ra.x[i]==i;
		}
		else if(i == 4){
			ls.y[1] = rb.x[i]==i;
		}
		else if(i == 9){
			ls.y[2]=ra.x[i]==rb.x[i];
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA   ** S(0)   =  2.     =  %f \n",s.x[0]);
	printf(" ** REAL DATA   ** S(1)   =  6.     =  %f \n",s.x[1]);
	printf(" ** REAL DATA   ** S(2)   = 15.     =  %f \n",s.x[2]);
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(0) = .TRUE.  =  %ud \n",ls.y[0]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(1) = .TRUE.  =  %ud \n",ls.y[1]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(2) = .FALSE. =  %ud \n",ls.y[2]);
	}
	exit (0);
}
