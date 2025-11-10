#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define DA40(i,j) da40[i-1][j-1]
#define DB10(i,j,k) db10[i-1][j-1][k-1]
#define DB20(i,j,k) db20[i-1][j-1][k-1]
double da10[20][20],da20[20][20],da30[20][20],da40[20][20];
double db10[15][15][15],db20[10][10][10];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=10;
	long int IT5=15;
	long int I,J,K,N1,N2,N3;
	double DX,DY,dy;
	long int i,j,k,n;
	for(i=0;i< 20;i++){
		for(j=0;j< 20;j++){
			da10[i][j]=2.0;
			da20[i][j]=3.0;
			da30[i][j]=5.0;
		}
	}
	for(i=0;i< 10;i++){
		for(j=0;j< 20;j++){
			da40[i][j]=10.0;
		}
	}
	for(i=10;i< 20;i++){
		for(j=0;j< 20;j++){
			da40[i][j]=-5.0;
		}
	}
	for(i=0;i< 10;i++){
		for(j=0;j< 10;j++){
			for(k=0;k< 10;k++){
				db10[i][j][k]=-1.0;
				db20[i][j][k]=-2.0;
			}
		}
	}
	for(I=1;I<=IT4;I++){
		for(J=2;J<=IT5;J++){
			DA10(I,J)=DA30(I,J+IT2+1)*DA40(J+1,I+IT3);
			DA30(I,J)=DA10(I+IT1,J)-DA20(J-1+IT2,I+IT2+IT3);
			DA40(J,I+IT3-1)=DA20(I,J)*2.0;
LBL_10:
			;
		}
	}
	for(K=1;K<=IT2;K++){
		for(J=2;J<=IT3;J++){
			for(I=2;I<=IT4;I++){
				DB10(I,J,K)=DB10(I-1,J+IT2,K+IT1+1)+DA10(I-1,J+K);
				DB20(I,J,K)=DB20(I-1,J-K+1,K+IT2)+DA20(I+K,I+J);
LBL_20:
				;
			}
		}
	}
	N1=1;
	for(I=IT3;I>=2;I--){
		N2=I;
		for(J=2;J<=IT4;J++){
			DA20(J+IT4,I)=DA30(I,N2+1)-DA40(J-1+N1,N1+I);
			if ( DA20(J,I)  >   10.0  )
			{
				DA10(J+N1,I+N1+IT2)=DA20(J,I)-DA10(J,I);
				N2=N2+1;
			}
			DA40(J,I+IT2)=DA10(J,I+IT4)*2.0;
			DA30(I,N2+2)=(DA20(J,I+IT2)-DA40(J+1,I+IT3))*2.0;
LBL_30:
			;
		}
	}
	DX = 0.0;
	for(I=3;I<=IT4;I++){
		for(J=5;J<=IT4;J++){
			DY=0.0;
			N1=I-1;
			N2=J-1;
			N3=1;
			for(K=2;K<=IT4-1;K++){
				DB20(K-1,J,N1-1)=DA10(K,N1);
				DX=(DB10(I,J,K) > DA20(I,J)) ? DB10(I,J,K):DA20(I,J);
				if ( DX  <   10.0 ) goto LBL_55;
				DB20(N1,N2,K)=DX;
				K++;
LBL_55:
				;
			}
			DB10(I,N2,K+1)=DB20(I-1,N3,K-1)+DA30(I,K);
			dy=(DX < DB10(N2,N3,K-1)) ? DX:DB10(N2,N3,K-1);
			DY=DY+dy*2.0;
LBL_50:
			;
		}
		DB10(I,J,K)=DY;
LBL_40:
		;
	}
	printf("  ****  ***** \n");
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(DA10)  %g ",DA10(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(DA20)  %g ",DA20(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(DA30)  %g ",DA30(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(DA40)  %g ",DA40(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			for(k=1;k<=10;k++){
				printf("(DB10)  %g ",DB10(i,j,k));
				n=k%5;
				if(n==0)printf("\n");
			}
			printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			for(k=1;k<=10;k++){
				printf("(DB20)  %g ",DB20(i,j,k));
				n=k%5;
				if(n==0)printf("\n");
			}
			printf("\n");
		}
		printf("\n");
	}
	exit (0);
}
