#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I10(i) i10[i-1]
#define I30(i,j,k) i30[i-1][j-1][k-1]
#define LIST(i) list[i-1]
#define L10(i) l10[i-1]
#define L30(i,j,k) l30[i-1][j-1][k-1]
#define L20(i,j) l20[i-1][j-1]
#define L31(i,j,k) l31[i-1][j-1][k-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
#define D20(i,j) d20[i-1][j-1]
#define D30(i,j,k) d30[i-1][j-1][k-1]
#define D31(i,j,k) d31[i-1][j-1][k-1]
#define CD10(i) cd10[i-1]
#define CD30(i,j,k) cd30[i-1][j-1][k-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD21(i,j) cd21[i-1][j-1]
long int i10[2]={
	1,2};
unsigned long int l10[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned long int l20[2][10]={
	1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0};
COMPLEX16 cd10[10]={
	{
		4,4	},
	{
		4,4	},
	{
		4,4	},
	{
		4,4	},
	{
		8,8	},
	{
		8,8	},
	{
		8,8	},
	{
		8,8	},
	{
		1,0	},
	{
		0,1	}
};
long int i30[2][2][10],list[10];
unsigned long int l30[10][2][2],l31[10][2][2];
float r10[10];
double d10[10],d20[10][2],d30[10][2][2],d31[10][2][2];
COMPLEX16 cd20[2][10],cd30[10][2][2],cd21[2][2];
int main()
{

	float S=0;
	long int I10S,I11S=0,I12S=0,N2=2,N10=10;
	long int i,j,k,CNT,n;
	unsigned long int L10S=0,L11S=0;
	double D10S=0.0,D11S=5.0,D12S=0.0,m,l;
	COMPLEX16 CD10S={
		0.0,0.0	};

	for(i=0;i< 10;i++){
		list[i]=i+1;
		d10[i]=i+1;
		r10[i]=0;
	}

	for(j=0,CNT=1,m=1.0,n=0;j< 2;j++){
		for(i=0;i< 10;i++){
			d20[i][j]=m;
			cd20[j][i].dreal=0.0;
			cd20[j][i].dimag=0.0;
			CNT+=1;
			n=CNT%5;
			if(n == 0) m+=1.0;
		}
	}

	for(k=0,CNT=1,m=1,n=0;k< 10;k++){
		for(j=0;j< 2;j++){
			for(i=0;i< 2;i++){
				i30[i][j][k]=m;
				CNT+=1;
				n=CNT%10;
				if(n == 0) m+=1;
			}
		}
	}

	for(k=0,CNT=1,m=1.0,n=0;k< 2;k++){
		for(j=0;j< 2;j++){
			for(i=0;i< 10;i++){
				l30[i][j][k]=l31[i][j][k]=0;
				d31[i][j][k]=0.0;
				d30[i][j][k]=m;
				CNT+=1;
				n=CNT%10;
				if(n == 0) m+=1;
			}
		}
	}

	for(k=0,CNT=1,l=1.0,m=1.0;k<2;k++){
		for(j=0;j<2;j++){
			for(i=0;i<10;i++){
				cd30[i][j][k].dreal=l;
				cd30[i][j][k].dimag=m;
				if(CNT == 10) m=0.0;
				if(CNT == 20) l=0.0,m=1.0;
				if(CNT == 30) l=2.0,m=2.0;
				CNT+=1;
			}
		}
	}

	for(j=0,l=1.0;j<2;j++){
		for(i=0;i<2;i++){
			cd21[i][j].dreal=l;
			cd21[i][j].dimag=l;
			l+=1.0;
		}
	}

	printf("  ***** LIST VECTOR METHOD *****\n");
	for(i=1;i<=N2;i++)
	{
		for(j=1;j<=N2;j++)
		{
			for(k =1;k <=N10;k ++)
			{
				I10S=I10(i)*I30(i,j,k);
				L10S=L10(k)||L30(k,j,i);
				if (   L10S     ==1)
				{
					D10S=D10(k)+D20(k,j)-D30(k,j,i);
					D12S=D10S;
					CD10S.dreal=(CD10(k).dreal*CD30(k,j,i).dreal+CD10(k).dimag
					    *CD30(k,j,i).dimag)/
					    (CD30(k,j,i).dreal*CD30(k,j,i).dreal+
					    CD30(k,j,i).dimag*CD30(k,j,i).dimag);
					CD10S.dimag=(CD10(k).dimag*CD30(k,j,i).dreal-CD10(k).dreal
					    *CD30(k,j,i).dimag)/
					    (CD30(k,j,i).dreal*CD30(k,j,i).dreal+
					    CD30(k,j,i).dimag*CD30(k,j,i).dimag);
					I11S=I11S+I10S+i;
					D11S=(D10(k) > D11S) ? D10(k):D11S;
					L20(j,k)=L10S;
					R10(LIST(k))=(float)(D10S)+(float)(i);
					CD20(j,LIST(k)).dreal=CD10S.dreal;
					CD20(j,LIST(k)).dimag=CD10S.dimag;
				}
				else
				{
					D10S=D10(LIST(k));
					I12S=I12S-I10S;
					CD10S.dreal=(CD21(j,i).dreal*CD30(LIST(k),j,i).dreal+CD21(j,i).dimag
					    *CD30(LIST(k),j,i).dimag)/
					    (CD30(k,j,i).dreal*CD30(k,j,i).dreal+
					    CD30(k,j,i).dimag*CD30(k,j,i).dimag);
					CD10S.dimag=(CD21(j,i).dimag*CD30(LIST(k),j,i).dreal-CD21(j,i).dreal
					    *CD30(LIST(k),j,i).dimag)/
					    (CD30(LIST(k),j,i).dreal*CD30(LIST(k),j,i).dreal+
					    CD30(LIST(k),j,i).dimag*CD30(LIST(k),j,i).dimag);
					D12S=(double)(I10S)+D30(k,LIST(j),i);
					L11S=L10S||L20(j,k);
					L31(LIST(k),j,i)=L11S;
				}
				D10S=D10S+D10(j);
				D31(k,j,i)=D10S+CD10S.dreal+D12S;
			}
		}
	}


	printf("  I11S = %ld \n",I11S);
	printf("  D11S = %g \n",D11S);

	for(j=1,CNT=1,n=0;j<=10;j++){
		for(i=1;i<=2;i++){
			printf("  L20(%ld,%ld)= %lu ",i,j,L20(i,j));
			CNT+=1;
			n=CNT%4;
			if(n == 0) printf("\n");
		}
	}
	printf("\n");

	for(i=1,n=0;i<=10;i++){
		printf("  R10(%ld)= %g ",i,R10(i));
		n=i%4;
		if(n == 0) printf("\n");
	}
	printf("\n");

	for(j=1,CNT=1,n=0;j<=10;j++){
		for(i=1;i<=2;i++){
			printf("  CD20(%ld,%ld)=(%g,%g) ",i,j,CD20(i,j).dreal,CD20(i,j).dimag);
			n=i%2;
			if(n == 0) printf("\n");
		}
	}
	printf("\n");

	printf("  I12S =  %ld ",I12S);

	for(k=1,CNT=1,n=0;k<=2;k++){
		for(j=1;j<=2;j++){
			for(i=1;i<=10;i++){
				printf("  L31(%ld,%ld,%ld)=  %lu ",i,j,k,L31(i,j,k));
				n=i%3;
				if(n == 0) printf("\n");
			}
		}
	}
	printf("\n");

	for(k=1,CNT=1,n=0;k<=2;k++){
		for(j=1;j<=2;j++){
			for(i=1;i<=10;i++){
				printf("  D31(%ld,%ld,%ld)=  %g ",i,j,k,D31(i,j,k));
				n=i%3;
				if(n == 0) printf("\n");
			}
		}
	}
	printf("\n");
	exit (0);
}
