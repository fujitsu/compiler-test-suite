#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
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
	long int L4S1=1,L4S2=1;
	float R4S1=1,R4S2=1;
	int i,l,I,JJ;
	for(i=0;i< 10;i++){
		r4s3[i]=1.;
	}
	for(i=0;i< 10;i++){
		l=i+1;
		r4a1[i]=l;
	}
	for(i=0;i< 10;i++){
		r4a2[i]=1.;
	}
	for(i=0;i< 10;i++){
		l4s3[i]=1;
	}
	for(i=0;i< 10;i++){
		if(i==0||i==2||i==4||i==6||i==8) l4a1[i]=1.;
		else l4a1[i]=0.;
	}
	for(i=0;i< 10;i++){
		if(i==0||i==2||i==4||i==6||i==8) l4a2[i]=0.;
		else l4a2[i]=1.;
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(I=1;I<=10;I++){
		if(L4A1(I)==1){
			R4S1=R4A1(I);
			R4S3(1)=R4A1(I)+R4A2(I);
			L4S1=L4A1(I);
			L4S3(1)=!(L4A2(I));
		}
	}
	printf(" ** TEST NO. 4 **\n");
	for(i=1;i<=10;i++){
		printf(" %g %g %ld %ld\n",R4S1,R4S3(1),L4S1,L4S3(1));
	}
	for(I=1;I<=10;I++){
		if(L4A2(I)==1){
			R4S1=R4A1(I)*R4A2(I);
			R4S3(2)=R4A1(I)-R4A2(I);
			L4S1=!(L4A1(I));
			L4S3(2)=L4A1(I)&&L4A2(I);
		}
		R4A1(I)=R4S1;
		R4A2(I)=R4S3(1);
		L4A1(I)=L4S1;
		L4A2(I)=L4S3(1);
	}
	printf(" ** TEST NO. 4-1 **\n");
	for(i=1;i<=10;i++){
		printf(" %g %g %ld %ld\n",R4S1,R4S3(1),L4S1,L4S3(1));
	}
	for(i=1;i<=10;i++){
		printf(" %g %g %ld %ld\n",R4A1(i),R4A2(i),L4A1(i),L4A2(i));
	}
	for(I=1;I<=10;I++){
		if(L4A2(I)==1){
			L4S1=L4A1(I)&&L4A2(I);
			if(L4S1==1){
				L4A1(I)=L4S1;
				L4S2=L4A1(I)&&L4A2(I);
			}
			else{
				L4A1(I)=L4A2(I);
				L4S2=!(L4A2(I));
			}
		}
	}
	printf(" ** TEST NO. 4 - 2 **\n");
	printf(" %g %ld %ld\n",R4S1,L4S1,L4S2);
	for(i=1;i<=10;i++){
		printf(" %g %ld\n",R4A1(i),L4A1(i));
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+1.;
		if(R4S1 >  0){
			R4S2=R4A1(I)+R4A2(I)+1.;
		}
		if(R4S2 >  0){
			L4S1=L4A1(I);
			if(L4S1==1){
				L4A1(I)=L4S1;
			}
		}
	}
	printf(" ** TEST NO. 4 - 3 **\n");
	for(i=1;i<=10;i++){
		printf(" %g %g %ld %ld %g %ld\n",R4S1,R4S2,L4S1,L4S2,R4A1(i),L4A1(i));
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I);
		if(R4S1 != I){
			R4A1(I)=R4S1;
			R4A1(I)=R4S1;
		}
		R4S1=R4A1(I)+R4A2(I);
		if(R4S1 >  0){
			R4S3(1)=R4A1(I)+R4A2(I);
			L4S3(1)=L4A1(I)&&L4A2(I);
		}
		L4S1=L4A1(I)&&L4A2(I);
		if(L4S1==1){
			L4A1(I)=L4S1;
			L4A1(I)=L4S1;
		}
	}
	printf(" ** TETS NO. 4 - 4 **\n");
	for(i=1;i<=10;i++){
		printf(" %g %g %ld %ld %g %ld\n",R4S1,R4A1(i),L4S1,
		    L4A1(i),R4S3(1),L4S3(1));
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+1.;
		if(R4S1 >  0) goto LBL_60;
		R4A1(I)=R4S1;
		R4S1=R4A1(I)+2.;
		if(R4S1 <  0) goto LBL_60;
		R4A1(I)=R4S1;
		L4S1=L4A1(I);
		if(L4S1==1) goto LBL_60;
		L4A1(I)=L4S1;
LBL_60:
		;
	}
	printf(" ** TETS NO. 4 - 5 **\n");
	for(i=1;i<=10;i++){
		printf(" %g %ld %g %ld\n",R4S1,L4S1,R4A1(i),L4A1(i));
	}
	R4S1=10.;
	for(I=1;I<=R4S1;I++){
		R4S1=R4A1(I)+I;
		if(R4S1 >  10) goto LBL_71;
	}
LBL_71:
	;
	printf(" ** TEST NO. 4 - 6 **\n");
	printf(" %g ",R4S1);
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
	printf(" ** TEST NO. 1 - 7 **\n");
	for(i=1;i<=10;i++){
		printf(" %g %g %ld %ld\n",R4S1,R4A1(i),L4S1,L4A1(i));
	}
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I);
		if(R4S1 >  0) goto LBL_91;
		R4S1=R4A2(I);
LBL_91:
		;
		R4S3(1)=R4S3(1)+R4A1(I);
		if(R4S1 >  0) goto LBL_92;
		R4S3(1)=R4A1(I);
LBL_92:
		;
		L4S1=L4A1(I)&&L4A2(I);
		if(L4S1==1) goto LBL_90;
		L4A1(I)=L4S1;
LBL_90:
		;
	}
	printf(" ** TEST NO. 1 - 8 **\n");
	for(i=1;i<=10;i++){
		printf(" %g %ld %g %ld\n",R4S1,L4S1,R4A1(i),L4A1(i));
	}
	exit (0);
}
