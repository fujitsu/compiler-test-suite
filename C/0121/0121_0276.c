#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "001.h"
#define R4S3(i) r4s3[i-1]
#define R4A1(i) r4a1[i-1]
#define R4A2(i) r4a2[i-1]
#define L4S3(i) l4s3[i-1]
#define L4A1(i) l4a1[i-1]
#define L4A2(i) l4a2[i-1]
float r4s3[10],r4a1[10],r4a2[10];
unsigned long int l4s3[10],l4a1[10],l4a2[10];
int main()
{
	long int L4S1;
	int i,I,JJ;
	float R4S1,R4S2;
	float R4S0;
        for(i=0;i< 10;i++){
		r4a1[i]=i+1;
	}
	for(i=0;i< 10;i++){
		r4a2[i]=1.;
	}
	for(i=0;i< 10;i++){
		if(i%2 == 0){
			l4a1[i]=1;
			l4a2[i]=0;
		}
		else{
			l4a1[i]=0;
			l4a2[i]=1;
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I);
		if(R4S1 >  0) continue;
		R4S2=R4A1(I)+1.;
	}
	for(I=1;I<=10;I++){
		L4S1=(L4A1(I) && L4A2(I));
		if(L4S1==1) continue;
		L4A1(I)=(L4A2(I) && L4S1);
	}
	printf(" ** TEST NO. 1 **\n");
	printf(" R4S1=%g\n",R4S1);
	for(i=1;i<=10;i++){
		printf(" R4A1[%d]=%g",i,R4A1(i));
		if(i%5 == 0) printf("\n");
	}
	printf(" L4S1=%ld\n",L4S1);
	for(i=1;i<=10;i++){
		printf(" L4A1[%d]=%ld",i,L4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I);
		if (L4A1(I)==1) continue;
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 >  0) continue;
		R4S1=R4A2(I)+2.;
	}
	printf(" ** TEST NO. 5-1 **\n");
	printf(" R4S1=%g\n",R4S1);
	for(I=1;I<=10;I++){
		if(L4A1(I)==1)goto LBL_31         ;
		R4S1=R4A1(I);
		if (R4S1 == I) R4A1(I)=R4S1;
		else R4A2(I)=R4S1+R4A1(I);
LBL_31:
		;
		if (L4A2(I)==1)goto LBL_32         ;
		R4S1=R4A1(I);
		if (R4S1 >  0 ) R4A1(I)=R4S1;
		else R4A2(I)=R4S1+R4A2(I);
LBL_32:
		;
		L4S1=L4A1(I);
		if (L4S1==1) L4A1(I)=L4S1;
		else L4A2(I)=(L4S1 && L4A1(I));
		if ((L4A1(I) == 1)&&(L4A2(I) == 1)){
			if (R4A1(I) != R4A2(I)){
				R4S1=R4A1(I)+R4A2(I);
				R4S1=R4A1(I)+R4A2(I);
				L4S1=(L4A1(I) && L4A2(I));
				continue;
			}
			else{
				R4S1=R4A1(I)-R4A2(I);
				R4S1=R4A1(I)-R4A2(I);
				L4S1=(L4A1(I) || L4A2(I));
			}
		}
	}
	printf(" ** TEST NO. 5 - 2 **\n");
	printf(" R4S1=%g\n",R4S1);
	printf(" L4S1=%ld\n",L4S1);
	for(i=1;i<=10;i++){
		printf(" L4A1[%d]=%ld",i,L4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(i=1;i<=10;i++){
		printf(" R4A1[%d]=%g",i,R4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 >  0) R4A1(I)=R4S1;
		else R4A1(I)=R4S1+1.;
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 <  0.) R4A1(I)=R4S1;
		else R4A1(I)=R4S1+1.;
		L4S1=(L4A1(I) && L4A2(I));
		if (L4S1==1) L4A1(I)=L4S1;
		else L4A1(I)=!(L4S1);
	}
	printf(" ** TEST NO. 5 - 3 **\n");
	printf(" R4S1=%g\n",R4S1);
	printf(" L4S1=%ld\n",L4S1);
	for(i=1;i<=10;i++){
		printf(" R4A1[%d]=%g",i,R4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(i=1;i<=10;i++){
		printf(" L4A1[%d]=%ld",i,L4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 != I) R4A1(I)=R4S1;
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 >  0) R4A1(I)=R4S1;
		L4S1=(L4A1(I) && L4A2(I));
		if (L4S1==1) L4A1(I)=L4S1;
	}
	printf(" ** TETS NO. 5 - 4 **\n");
	printf(" R4S1=%g\n",R4S1);
	for(i=1;i<=10;i++){
		printf(" R4A1[%d]=%g",i,R4A1(i));
		if(i%5 == 0) printf("\n");
	}
	printf(" L4S1=%ld\n",L4S1);
	for(i=1;i<=10;i++){
		printf(" L4A1[%d]=%ld",i,L4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+1.;
		if (R4S1 >  0) continue;
		R4A1(I)=R4S1;
		R4S1=R4A1(I)+2.;
		if (R4S1 <  0 )continue;
		R4A1(I)=R4S1;
		L4S1=L4A1(I);
		if (L4S1==1)continue;
		L4A1(I)=L4S1;
	}
	printf(" ** TETS NO. 5 - 5 **\n");
	printf(" R4S1=%g\n",R4S1);
	printf(" L4S1=%ld\n",L4S1);
	for(i=1;i<=10;i++){
		printf(" R4A1[%d]=%g",i,R4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(i=1;i<=10;i++){
		printf(" L4A1[%d]=%ld",i,L4A1(i));
		if(i%5 == 0) printf("\n");
	}
	R4S0=10.;
	for(I=1;I<=R4S0;I++){
		R4S1=R4A1(I)+I;
		if (R4S1 >  10) continue;
	}
	printf(" ** TEST NO. 5 - 6 **\n");
	printf(" R4S1=%g\n",R4S1);
	for(JJ=1;JJ<=10;JJ++){
		for(I=1;I<=10;I++){
			R4S1=R4A1(I)+R4A2(I);
			R4A1(I)=R4S1;
		}
		for(I=1;I<=10;I++){
			R4S1=R4A1(I)+R4A2(I);
			R4A1(I)=R4S1;
		}
		for(I=1;I<=10;I++){
			L4S1=L4A1(I)&&L4A2(I);
			L4A1(I)=L4S1;
		}
	}
	printf(" ** TEST NO. 5 - 7 **\n");
	printf(" R4S1=%g\n",R4S1);
	for(i=1;i<=10;i++){
		printf(" R4A1[%d]=%g",i,R4A1(i));
		if(i%5 == 0) printf("\n");
	}
	printf(" L4S1=%ld\n",L4S1);
	for(i=1;i<=10;i++){
		printf(" L4A1[%d]=%ld",i,L4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 >  0)goto LBL_91         ;
		R4S1=R4A2(I);
LBL_91:
		;
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 >  0)goto LBL_92         ;
		R4S1=R4A1(I);
LBL_92:
		;
		L4S1=(L4A1(I) && L4A2(I));
		if (L4S1==1) continue;
		L4A1(I)=L4S1;
	}
	printf(" ** TEST NO. 5 - 8 **\n");
	printf(" R4S1=%g\n",R4S1);
	printf(" L4S1=%ld\n",L4S1);
	for(i=1;i<=10;i++){
		printf(" R4A1[%d]=%g",i,R4A1(i));
		if(i%5 == 0) printf("\n");
	}
	for(i=1;i<=10;i++){
		printf(" L4A1[%d]=%ld",i,L4A1(i));
		if(i%5 == 0) printf("\n");
	}
	exit (0);
}
