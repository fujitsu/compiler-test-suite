#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DM10(i,j) dm10[30+i][30+j]
#define DM20(i,j) dm20[30+i][30+j]
#define DM30(i,j) dm30[30+i][30+j]
double da10[30],da20[30],da30[30];
double db10[30][30],db20[30][30],db30[30][30];
double dm10[30][30],dm20[30][30],dm30[30][30];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int i,j,k,n;
	double b;
	long int I,J,K,I1,J1,K1,N1,N2,I2,N3,I3,J3,J2,K3;
	for(i=0;i<30;i++){
		da10[i]=1.0;
		da20[i]=2.0;
		da30[i]=3.0;
	}
	for(i=0;i<30;i++){
		for(j=0;j<30;j++){
			db10[i][j]=10.0;
			db20[i][j]=9.0;
			db30[i][j]=8.0;
			dm10[i][j]=4.0;
			dm20[i][j]=5.0;
			dm30[i][j]=6.0;
		}
	}
	for(I=1;I<=20;I+=IT2){
		DA10(I)=DA20(I)+DA30(I+IT3);
		for(J=1;J<=I;J++){
			DB10(I,J)=DB10(I,J)+DB20(I,J)-DA10(J);
		}
LBL_10:
		;
	}
	printf("  ***  ** LOOP-1 *** \n");
	for(i=1;i<=20;i++){
		printf("(DA10)  %g ",DA10(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(i=1;i<=20;i+=2){
		for(j=1;j<=20;j++){
			printf("(DB10)  %g ",DB10(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(J=-30;J<=-1;J+=2){
		for(K=-30;K<=-1;K++){
			DM10(J,K)=DM20(J,K)-DM30(J,K)/2.0;
			DB20(-J,-K)=DB20(-J,-K)+((DB30(-J,-K)>DM10(J,K))?
			    DB30(-J,-K)-DM10(J,K):0.0);
LBL_20:
			;
		}
	}
	printf("  ***  ** LOOP-2 *** \n");
	for(i=-30;i<=-1;i++){
		for(j=-30;j<=-1;j++){
			printf("(DM10)  %g ",DM10(i,j));
			n=j%5;
			if(n==-1)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=1;i<=30;i++){
		for(j=1;j<=30;j++){
			printf("(DB20)  %g ",DB20(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(I1=30;I1>=21;I1-=IT1){
		b=sqrt(DA10(I1)*DA30(I1));
		DA20(I1)=(b>0.0)?(double)(int)(b+0.5):(double)(int)(b-0.5);
		for(J1=I1;J1>=11;J1-=1){
			DB30(I1,J1)=((DB10(I1,J1)>DB20(I1,J1)) ?
			    DB10(I1,J1):DB20(I1,J1))-DA20(J1);
			for(K1=J1;K1>=1;K1-=1){
				DB10(J1,K1)=((DB10(J1,K1)<DB20(I1,J1)) ?
				    DB10(J1,K1):DB20(I1,J1))*2.0;
LBL_35:
				;
			}
		}
		N1=I1-10;
		N2=I1-20;
		DA20(N2)=DA20(N1)+DA30(I1);
LBL_30:
		;
	}
	printf("  ***  ** LOOP-3 *** \n");
	for(i=21;i<=30;i++){
		printf("(DA20)  %g ",DA20(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(i=21;i<30;i++){
		for(j=11;j<=30;j++){
			printf("(DB30)  %g ",DB30(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=1;i<=20;i++){
		for(j=1;j<=30;j++){
			printf("(DB10)  %g ",DB10(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(I2=2;I2<=10;I2++){
		for(J2=I2+IT3;J2<=20;J2++){
			DB20(I2,J2)=DB10(I2,J2)-DM20(-I2,-J2);
LBL_45:
			;
		}
		DM20(-1,-I2)=DM10(-I2,-1)-DM30(1-I2,1-I2);
		DM30(-I2,-I2)=(DM30(1-I2,-I2) > DM30(-I2,1-I2))?
		    DM30(1-I2,-I2):DM30(-I2,1-I2);
LBL_40:
		;
	}
	printf("  ***  ** LOOP-4 *** \n");
	for(i=1;i<=10;i++){
		for(j=1;j<=20;j++){
			printf("(DB20)  %g ",DB20(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=-10;i<=-1;i++){
		printf("(DM20)  %g ",DM20(-1,i));
	}
	printf("\n");
	printf("\n");
	for(i=-10;i<=-1;i++){
		for(j=-10;j<=-1;j++){
			printf("(DM30)  %g ",DM30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	for(I3=21;I3<=30;I3++){
		N3=-I3;
		DM10(N3,N3)=DM20(N3,N3+2)+DM30(N3+1,N3);
		N2=-I3+20;
		DM30(N2,N2)=DM10(N2,N3)+DM20(N3,N2);
		N1=-I3+10;
		DM20(N1,N1)=DM10(N1,N2)-DM30(N1,N3);
		for(J3=20;J3>=11;J3-=1){
			for(K3=1;K3<=10;K3++){
				DB10(I3,K3)=DB20(J3,K3)+DB30(I3,J3);
				DB20(K3,J3)=DB30(J3,K3)-DB10(J3,K3);
				DB30(K3,I3)=DB10(J3,I3)*DB20(J3,K3);
LBL_55:
				;
			}
		}
LBL_50:
		;
	}
	printf("  ***  ** LOOP-5 *** \n");
	for(i=-30;i<=-21;i++){
		for(j=-30;j<=-21;j++){
			printf("(DM10)  %g ",DM10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	for(i=-10;i<=-1;i++){
		for(j=-10;j<=-1;j++){
			printf("(DM20)  %g ",DM20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	for(i=-20;i<=-11;i++){
		for(j=-20;j<=-11;j++){
			printf("(DM30)  %g ",DM30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	for(i=21;i<=30;i++){
		for(j=1;j<=10;j++){
			printf("(DB10)  %g ",DB10(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=1;i<=10;i++){
		for(j=11;j<=20;j++){
			printf("(DB20)  %g ",DB20(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=1;i<=10;i++){
		for(j=20;j<=30;j++){
			printf("(DB30)  %g ",DB30(i,j));
			n=j%5;
			if(n==4)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	exit (0);
}
