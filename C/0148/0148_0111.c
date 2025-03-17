#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main()
{
	static float             ra[10] = {
				1.,2.,3.,4.,5.,6.,7.,8.,9.,10.		};
	static float             rb[10] = {
				5.,5.,5.,5.,5.,5.,5.,5.,5.,5. 		};
	static float             s[10] ;
	static unsigned long int ls[10];
	static long int          i ;
	for(i=0;i<10;i++){
		if (i == 0){
			s[0] = ra[i] + 1. ;
		}
		else if(i == 4){
			s[1] = rb[i] + 1. ;
		}
		else if(i == 9){
			s[2] = ra[i] + rb[i] ;
		}
	}
	for(i=0;i<10;i++){
		if (i == 0){
			ls[0]=ra[i]==i;
		}
		else if(i == 4){
			ls[1] = rb[i]==i;
		}
		else if(i == 9){
			ls[2]=ra[i]==rb[i];
		}
	}
	printf(" #### 8019 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA   ** S(0)   =  2.     =  %f \n",s[0]);
	printf(" ** REAL DATA   ** S(1)   =  6.     =  %f \n",s[1]);
	printf(" ** REAL DATA   ** S(2)   = 15.     =  %f \n",s[2]);
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(0) = .TRUE.  =  %ud \n",ls[0]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(1) = .TRUE.  =  %ud \n",ls[1]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(2) = .FALSE. =  %ud \n",ls[2]);
	}
	exit (0);
}
