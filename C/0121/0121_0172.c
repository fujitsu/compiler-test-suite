#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB10 (void);
int SUBF (void);
int SUBE (void);
int SUBD (void);
int SUBC (void);
int SUBB (void);
int SUBA (void);
int SUB9 (void);
int SUB8 (void);
int SUB7 (void);
int SUB6 (void);
int SUB5 (void);
int SUB4 (void);
int SUB3 (void);
int SUB2 (void);
int SUB1 (void);
long int NCWNR=10;
long int CTR;
long int i,j,k,l,m,n;
int 
main (void)
{
	SUB1();
	SUB2();
	SUB3();
	SUB4();
	SUB5();
	SUB6();
	SUB7();
	SUB8();
	SUB9();
	SUBA();
	SUBB();
	SUBC();
	SUBD();
	SUBE();
	SUBF();
	SUB10();
	exit (0);
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB1 (void)
{
	float a[4][4][4][4][4][4];
	long int I,J,K,L,M,N;
	for(i=0;i<4;i++){
		for(j=0;j<4;j++){
			for(k=0;k<4;k++){
				for(l=0;l<4;l++){
					for(m=0;m<4;m++){
						for(n=0;n<4;n++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB2 (void)
{
	float a[4][4][4][4][4][4];
	long int I,N,M,L,K,J;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB3 (void)
{
	float a[4][4][4][4][4][4];
	long int I,N,M,L,K,J;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB4 (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB5 (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB6 (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB7 (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB8 (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB9 (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUBA (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUBB (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUBC (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUBD (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUBE (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUBF (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=4;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=1;L<=2;L++)
				{
					for(M=1;M<=2;M++)
					{
						for(N=1;N<=2;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
#define A(i,j,k,l,m,n) a[i-1][j-1][k-1][l-1][m-1][n-1]
int 
SUB10 (void)
{
	float a[4][4][4][4][4][4];
	long int N,M,L,K,J,I;
	for(n=0;n<4;n++){
		for(m=0;m<4;m++){
			for(l=0;l<4;l++){
				for(k=0;k<4;k++){
					for(j=0;j<4;j++){
						for(i=0;i<4;i++){
							a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(I=1;I<=4;I++)
	{
		for(J=1;J<=2;J++)
		{
			for(K=1;K<=4;K++)
			{
				for(L=1;L<=4;L++)
				{
					for(M=1;M<=4;M++)
					{
						for(N=1;N<=4;N++)
						{
							A(N,M,L,K,J,I)=sin(A(N,M,L,K,J,I));
LBL_10:
							;
						}
					}
				}
			}
		}
	}
	CTR=0;
	printf(" A =");
	for(N=1;N<=4;N++){
		for(M=1;M<=4;M++){
			for(L=1;L<=4;L++){
				for(K=1;K<=4;K++){
					for(J=1;J<=4;J++){
						for(I=1;I<=4;I++){
							printf(" %g",A(I,J,K,L,M,N));
							CTR++;
							if (CTR%NCWNR==0)
							{
								printf("\n");
								printf("    ");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
LBL_900:
	;
	return 0;
}
