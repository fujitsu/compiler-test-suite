#include <stdlib.h>
#include <math.h>
#include <stdio.h>
unsigned long int l[10],ls[10],lb[10];
float ra[10],rb[10],s[10];
int main()
{
	static unsigned long int l[10] = {
				1,0,1,0,1,0,1,0,1,0		};
	static unsigned long int lb[10] = {
				1,1,1,1,1,1,1,1,1,1		};
	static unsigned long int ls[10] = {
				0,0,0,0,0,0,0,0,0,0		};
	static float             ra[10] = {
				1.,2.,3.,4.,5.,6.,7.,8.,9.,10.		};
	static float             rb[10] = {
				5.,5.,5.,5.,5.,5.,5.,5.,5.,5.		};
	static float             s[10] = {
				0,0,0,0,0,0,0,0,0,0		};
	static long int          i ;
	for(i=0;i<10;i++){
		if (l[i]==1){
			s[0] = ra[i]+1.;
			rb[i]= s[1];
			s[2] = rb[i]+1.;
		}
	}
	for(i=0;i<10;i++){
		if (l[i]==1){
			if (ra[i]==i){
				ls[1]=ra[i];
			}
			lb[i]=ls[1];
			ls[2]=1^lb[i];
		}
	}
	printf(" #### 8018 ## BUSY ON EXIT ####\n");
	for(i=0;i<10;i++){
		printf(" ** REAL DATA ** S(0) = 10.  =  %f \n",s[0]);
	}
	for(i=0;i<10;i++){
		printf(" ** REAL DATA ** S(1) =  0.  =  %f \n",s[1]);
	}
	for(i=0;i<10;i++){
		printf(" ** REAL DATA ** S(2) =  1.  =  %f \n",s[2]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(0) = .TRUE.  =  %ud \n",ls[0]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(1) = .FALSE. =  %ud \n",ls[1]);
	}
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(2) = .TRUE.  =  %ud \n",ls[2]);
	}
	exit (0);
}
