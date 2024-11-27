#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define A(i,j) a[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i,j) c[i-1][j-1]
#define L1(i) l1[i-1]
#define L2(i,j) l2[i-1][j-1]
float a[20][20],b[20][20],c[20][20];
unsigned long int l1[20],l2[20][20];
int main()
{
	long int N=15;
	long int i,k,j;
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			A(i,j)=1.0;
		}
	}
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			B(i,j)=2.0;
		}
	}
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			C(i,j)=3.0;
		}
	}
	for(i=1;i<=20;i++){
		L1(i)=0;
	}
	for(j=1;j<=20;j++){
		for(i=1;i<=10;i++){
			L2(i,j)=0;
		}
	}
	for(j=1;j<=20;j++){
		for(i=11;i<=15;i++){
			L2(i,j)=1;
		}
	}
	for(j=1;j<=20;j++){
		for(i=16;i<=20;i++){
			L2(i,j)=0;
		}
	}
	for(i=1;i<=N;i++)
	{
		L1(i)=!L2(i,1);
		for(j=2;j<=N;j++)
		{
			for(k=2;k<=N;k++)
			{
				A(k,j)=A(k,j)+C(k-1,j)*2.0;
				B(k,j)=C(k+1,j)*A(k+1,j);
				if ( L2(k,j) ==1)
				{
					C(k,j)=A(k,j+1)+1.0;
				}
			}
		}
	}
	printf(" ======== FIRST   =====\n");
	printf("   A            B            C \n");
	for(j=1;j<=20;j++){
		for(k=1;k<=20;k++){
			printf("     %g     ",A(k,j));
			printf("     %g     ",B(k,j));
			printf("     %g   \n",C(k,j));
		}
	}
	for(i=1;i<=5;i++)
	{
		L1(i)=!L2(i,1);
		for(j=2;j<=N;j++)
		{
			for(k=2;k<=N;k++)
			{
				C(k,j)=A(k,j)+B(k-1,j)/(float)(i);
				B(k,j)=C(k+1,j)-A(k+1,j);
				if ( L2(k,j) || L1(k) ==1)
				{
					L2(k,j)=1;
				}
				else
				{
					L1(k)=1;
				}
			}
		}
	}
	printf(" ======== SECOND  =====\n");
	printf("   A            B            C \n");
	for(j=1;j<=20;j++){
		for(k=1;k<=20;k++){
			printf("   %g     ",A(k,j));
			printf("   %g     ",B(k,j));
			printf("   %g   \n",C(k,j));
		}
	}
	exit (0);
}
