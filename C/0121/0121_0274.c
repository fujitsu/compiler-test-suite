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
	long int L4S1,L4S2,L4AS1;
	float R4S1,R4S2;
	int k;
	long int I,JJ;
	for(k=0;k< 10;k+=2){
		l4a1[k]=1;
		l4a2[k]=0;
	}
	for(k=1;k< 10;k+=2){
		l4a1[k]=0;
		l4a2[k]=1;
	}
	R4S1=1.0;
	R4S2=2.0;
	L4S1=L4S2=1;
	for(k=0;k< 10;k++){
		r4a1[k]=(float)(k+1);
		r4a2[k]=r4s3[k]=1.0;
		l4s3[k]=1;
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(I=1;I<=10;I++){
		R4S1=R4A1(I);
		if (R4S1 == I)R4A1(I)=1.0;
		else R4A2(I)=R4S1;
		L4S1=L4A1(I)&&L4A2(I);
		if (L4S1==1)L4A1(I)=1;
		else L4A2(I)=L4S1;
LBL_10:
		;
	}
	printf(" ** TEST NO. 3 **\n");
	for(k=1;k<=10;k++)printf(" R4A1(%2d)=%f\n",k,R4A1(k));
	for(k=1;k<=10;k++)printf(" L4A1(%2d)=%ld\n",k,L4A1(k));
	printf(" R4S1=%f\n",R4S1);
	printf(" L4S1=%ld\n",L4S1);
	for(I=1;I<=10;I++){
		R4S1=R4A1(I);
		L4S1=L4A1(I)&&L4A2(I);
		if (R4S1 >  0){
			R4A1(I)=R4S1+1.0;
			L4A1(I)=L4S1&&L4A1(I);
		}
		else{
			R4A2(I)=R4S1+2.0;
			L4A2(I)=L4S1;
		}
		R4S2=R4A1(I)+R4S1;
		L4S2=L4A1(I)&&L4A2(I);
LBL_20:
		;
	}
	printf(" ** TEST NO. 3-1 **\n");
	printf("R4S1=%f R4S2=%f L4S1=%ld L4S2=%ld\n",R4S1,R4S2,L4S1,L4S2);
	for(k=1;k<=10;k++)printf("R4A1(%2d)=%f\n",k,R4A1(k));
	for(k=1;k<=10;k++)printf("R4A2(%2d)=%f\n",k,R4A2(k));
	for(k=1;k<=10;k++)printf("L4A1(%2d)=%ld\n",k,L4A1(k));
	for(k=1;k<=10;k++)printf("L4A2(%2d)=%ld\n",k,L4A2(k));
	for(I=1;I<=10;I++){
		if (L4A1(I)==1){
			R4S1=R4A1(I)+R4A2(I);
			R4S1=R4A1(I)+R4A2(I);
			L4S1=L4A1(I)&&L4A2(I);
			L4S1=L4A1(I)&&L4A2(I);
			L4S3(1)=L4A2(I);
			L4S3(1)=L4A2(I);
		}
		else{
			R4S1=R4A1(I)-1.0;
			R4S1=R4A1(I)-1.0;
			L4S1=L4A1(I)||L4A2(I);
			L4S1=L4A1(I)||L4A2(I);
			R4S3(1)=R4A1(I)*R4A2(I);
		}
		L4S1=L4A1(I);
LBL_30:
		;
	}
	printf(" ** TEST NO. 3 - 2 **\n");
	printf("R4S1=%f  L4S1=%ld  L4S2=%ld  R4S3(1)=%f  L4S3(1)=%ld\n",
	    R4S1,L4S1,L4S2,R4S3(1),L4S3(1));
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I)+1.0;
		if (R4S1 >  0){
			R4A1(I)=L4S1;
			R4A1(I)=R4S1;
		}
		else R4A1(I)=R4S1+1.0;
		L4S1=L4A1(I)&&L4A2(I);
		if (L4S1==1)R4A1(I)=R4S1;
		else R4A1(I)=R4S1+1.0;
		L4S1=L4A1(I)&&L4A2(I);
		if (L4S1==1)L4A1(I)=L4S1;
		else L4A1(I)=!L4S1;
LBL_40:
		;
	}
	printf(" ** TEST NO. 3 - 3 **\n");
	printf("R4S1=%f  L4S1=%ld\n",R4S1,L4S1);
	for(k=1;k<=10;k++)printf("R4A1(%2d)=%f\n",k,R4A1(k));
	for(k=1;k<=10;k++)printf("L4A1(%2d)=%ld\n",k,L4A1(k));
	for(I=1;I<=10;I++){
		if (L4A2(I)==1)L4S1=L4A1(I);
		else L4S1=L4A2(I);
		if (L4S1==1){
			R4A1(I)=L4S1+1.0;
			L4S1   =R4A2(I);
			L4S3(1)=L4A1(I)&&L4A2(I);
		}
		if (L4S1==1){
			R4A1(I)=L4S1+1.0;
			L4A1(I)=!L4S1;
		}
LBL_50:
		;
	}
	printf(" ** TEST NO. 3 - 4 **\n");
	printf("R4S1=%f   L4S1=%ld\n",R4S1,L4S1);
	for(k=1;k<=10;k++)printf("R4A1(%2d)=%f\n",k,R4A1(k));
	for(k=1;k<=10;k++)printf("L4A1(%2d)=%ld\n",k,L4A1(k));
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+1.0;
		if (R4S1 >  0)break;
		R4A1(I)=R4S1;
		R4S1=R4A1(I)+2.0;
		if (R4S1 <  0 )break;
		R4A1(I)=R4S1;
		L4S1=L4A1(I);
		if (L4S1==1)break;
		L4A1(I)=L4S1;
LBL_60:
		;
	}
	printf(" ** TEST NO. 1 - 5 **\n");
	printf("R4S1=%f  L4S1=%ld\n",R4S1,L4S1);
	for(k=1;k<=10;k++)printf("R4A1(%2d)=%f\n",k,R4A1(k));
	for(k=1;k<=10;k++)printf("L4A1(%2d)=%ld\n",k,L4A1(k));
	R4S1=10.0;
	for(I=1;I<=R4S1;I++){
		R4S1=R4A1(I)+I;
		if (R4S1 >  10)break;
LBL_70:
		;
LBL_71:
		;
	}
	printf(" ** TEST NO. 3 - 6 **\n");
	printf("R4S1=%f\n",R4S1);
	for(JJ=1;JJ<=10;JJ++){
		for(I=1;I<=10;I++){
			R4S1=R4A1(I)+R4A2(I);
LBL_80:
			;
			R4A1(I)=R4S1;
		}
		for(I=1;I<=10;I++){
			R4S1=R4A1(I)+R4A2(I);
LBL_81:
			;
			R4A1(I)=R4S1;
		}
		for(I=1;I<=10;I++){
			L4S1=L4A1(I)&&L4A2(I);
LBL_82:
			;
			L4A1(I)=L4S1;
		}
LBL_83:
		;
	}
	printf(" ** TEST NO. 3 - 7 **\n");
	printf("R4S1=%f\n",R4S1);
	for(k=1;k<=10;k++)printf("R4A1(%2d)=%f\n",k,R4A1(k));
	printf("L4S1=%ld\n",L4S1);
	for(k=1;k<=10;k++)printf("L4A1(%2d)=%ld\n",k,L4A1(k));
	for(I=1;I<=10;I++){
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 <= 0)R4S1=R4A2(I);
LBL_91:
		;
		R4S1=R4A1(I)+R4A2(I);
		if (R4S1 <= 0)R4S1=R4A2(I);
LBL_92:
		;
		L4S1=L4A1(I)&&L4A2(I);
		if (L4S1!=1)L4A1(I)=L4S1;
LBL_90:
		;
	}
	printf(" ** TEST NO. 3 - 8 **\n");
	printf("R4S1=%f\n",R4S1);
	printf("L4S1=%ld\n",L4S1);
	for(k=1;k<=10;k++)printf("R4A1(%2d)=%f\n",k,R4A1(k));
	for(k=1;k<=10;k++)printf("L4A1(%2d)=%ld\n",k,L4A1(k));
	exit (0);
}
