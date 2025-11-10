#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int INITIL();
int INITC();
int INITR();
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define D13(i) d13[i-1]
#define D21(i,j) d21[i-1][j-1]
#define D22(i,j) d22[i-1][j-1]
#define D23(i,j) d23[i-1][j-1]
#define D31(i,j,k) d31[i-1][j-1][k-1]
#define D32(i,j,k) d32[i-1][j-1][k-1]
#define D33(i,j,k) d33[i-1][j-1][k-1]
#define D41(i,j,k,l) d41[i-1][j-1][k-1][l-1]
#define D42(i,j,k,l) d42[i-1][j-1][k-1][l-1]
#define D51(i,j,k,l,m) d51[i-1][j-1][k-1][l-1][m-1]
#define D52(i,j,k,l,m) d52[i-1][j-1][k-1][l-1][m-1]
#define D61(i,j,k,l,m,n) d61[i-1][j-1][k-1][l-1][m-1][n-1]
#define D62(i,j,k,l,m,n) d62[i-1][j-1][k-1][l-1][m-1][n-1]
#define E11(i) e11[i-1]
#define E12(i) e12[i-1]
#define E13(i) e13[i-1]
#define E21(i,j) e21[i-1][j-1]
#define E22(i,j) e22[i-1][j-1]
#define E23(i,j) e23[i-1][j-1]
#define E31(i,j,k) e31[i-1][j-1][k-1]
#define E32(i,j,k) e32[i-1][j-1][k-1]
#define E33(i,j,k) e33[i-1][j-1][k-1]
#define E41(i,j,k,l) e41[i-1][j-1][k-1][l-1]
#define E42(i,j,k,l) e42[i-1][j-1][k-1][l-1]
#define E51(i,j,k,l,m) e51[i-1][j-1][k-1][l-1][m-1]
#define E52(i,j,k,l,m) e52[i-1][j-1][k-1][l-1][m-1]
#define E61(i,j,k,l,m,n) e61[i-1][j-1][k-1][l-1][m-1][n-1]
#define E62(i,j,k,l,m,n) e62[i-1][j-1][k-1][l-1][m-1][n-1]

#define N11(i) n11[i-1]
#define N12(i) n12[i-1]
#define N13(i) n13[i-1]
#define N21(i,j) n21[i-1][j-1]
#define N22(i,j) n22[i-1][j-1]
#define N23(i,j) n23[i-1][j-1]
#define N31(i,j,k) n31[i-1][j-1][k-1]
#define N32(i,j,k) n32[i-1][j-1][k-1]
#define N33(i,j,k) n33[i-1][j-1][k-1]
#define N41(i,j,k,l) n41[i-1][j-1][k-1][l-1]
#define N42(i,j,k,l) n42[i-1][j-1][k-1][l-1]
#define N51(i,j,k,l,m) n51[i-1][j-1][k-1][l-1][m-1]
#define N52(i,j,k,l,m) n52[i-1][j-1][k-1][l-1][m-1]
#define N61(i,j,k,l,m,n) n61[i-1][j-1][k-1][l-1][m-1][n-1]
#define N62(i,j,k,l,m,n) n62[i-1][j-1][k-1][l-1][m-1][n-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L21(i,j) l21[i-1][j-1]
#define L22(i,j) l22[i-1][j-1]
#define L23(i,j) l23[i-1][j-1]
#define L31(i,j,k) l31[i-1][j-1][k-1]
#define L32(i,j,k) l32[i-1][j-1][k-1]
#define L33(i,j,k) l33[i-1][j-1][k-1]
#define L41(i,j,k,l) l41[i-1][j-1][k-1][l-1]
#define L42(i,j,k,l) l42[i-1][j-1][k-1][l-1]
#define L51(i,j,k,l,m) l51[i-1][j-1][k-1][l-1][m-1]
#define L52(i,j,k,l,m) l52[i-1][j-1][k-1][l-1][m-1]
#define L61(i,j,k,l,m,n) l61[i-1][j-1][k-1][l-1][m-1][n-1]
#define L62(i,j,k,l,m,n) l62[i-1][j-1][k-1][l-1][m-1][n-1]
double DS1,DS2,DS3;
float ES1,ES2,ES3;
COMPLEX16 cds1,cds2,cds3;
COMPLEX8 ces1,ces2,ces3;
long int NS1,NS2,NS3;
unsigned long int LS1,LS2,LS3;
double d11[10],d12[10],d13[10];
double d21[10][10],d22[10][10],d23[10][10];
double d31[10][10][10],d32[10][10][10],d33[10][10][10];
double d41[8][8][8][8],d42[8][8][8][8];
double d51[5][5][5][5][5],d52[5][5][5][5][5];
double d61[5][3][3][3][3][2],d62[5][3][3][3][3][2];
float e11[10],e12[10],e13[10];
float e21[10][10],e22[10][10],e23[10][10];
float e31[10][10][10],e32[10][10][10],e33[10][10][10];
float e41[8][8][8][8],e42[8][8][8][8];
float e51[5][5][5][5][5],e52[5][5][5][5][5];
float e61[5][3][3][3][3][2],e62[5][3][3][3][3][2];
COMPLEX16 cd11[10],cd12[10],cd13[10];
COMPLEX16 cd21[10][10],cd22[10][10],cd23[10][10];
COMPLEX16 cd31[10][10][10],cd32[10][10][10],cd33[10][10][10];
COMPLEX16 cd41[8][8][8][8],cd42[8][8][8][8];
COMPLEX16 cd51[5][5][5][5][5],cd52[5][5][5][5][5];
COMPLEX16 cd61[5][3][3][3][3][2],cd62[5][3][3][3][3][2];
COMPLEX8 ce11[10],ce12[10],ce13[10];
COMPLEX8 ce21[10][10],ce22[10][10],ce23[10][10];
COMPLEX8 ce31[10][10][10],ce32[10][10][10],ce33[10][10][10];
COMPLEX8 ce41[8][8][8][8],ce42[8][8][8][8];
COMPLEX8 ce51[5][5][5][5][5],ce52[5][5][5][5][5];
COMPLEX8 ce61[5][3][3][3][3][2],ce62[5][3][3][3][3][2];
long int n11[10],n12[10],n13[10];
long int n21[10][10],n22[10][10],n23[10][10];
long int n31[10][10][10],n32[10][10][10],n33[10][10][10];
long int n41[8][8][8][8],n42[8][8][8][8];
long int n51[5][5][5][5][5],n52[5][5][5][5][5];
long int n61[5][3][3][3][3][2],n62[5][3][3][3][3][2];
unsigned long int l11[10],l12[10],l13[10];
unsigned long int l21[10][10],l22[10][10],l23[10][10];
unsigned long int l31[10][10][10],l32[10][10][10],l33[10][10][10];
unsigned long int l41[8][8][8][8],l42[8][8][8][8];
unsigned long int l51[5][5][5][5][5],l52[5][5][5][5][5];
unsigned long int l61[5][3][3][3][3][2],l62[5][3][3][3][3][2];
int main()
{
	long int N=1;
	long int I6,IS1,I4,I3,I2,IS2,I1,I5,i,j,k,l,m,n;
	INITR();
	INITC();
	INITIL();
	for(I1=1;I1<=5;I1++){
		I6=N11(I1);
		for(I2=1;I2<=3;I2++){
			for(I3=1;I3<=3;I3++){
				for(I4=1;I4<=3;I4++){
					IS1=N41(I4,I3,I2,I1);
					for(I5=1;I5<=3;I5++){
						for(I6=1;I6<=2;I6++){
							IS2=I6*IS1;
							N61(I1,I2,I3,I4,I5,I6)=IS2;
						}
					}
					N42(I4,I3,I2,I1)=IS1/3;
				}
			}
		}
		D11(I1)=I6;
	}
	for(i=1;i<=10;i++){
		printf(" D11=%g",D11(i));
		if(i%5 == 0)printf("\n");
	}

	for(l=1;l<= 8;l++){
		for(k=1;k<= 8;k++){
			for(j=1;j<= 8;j++){
				for(i=1;i<= 8;i++){
					printf(" N42(%ld,%ld,%ld,%ld)=%ld\n",l,k,j,i,N42(l,k,j,i));
				}
			}
		}
	}
	for(n=1;n<= 5;n++){
		for(m=1;m<= 3;m++){
			for(l=1;l<= 3;l++){
				for(k=1;k<= 3;k++){
					for(j=1;j<= 3;j++){
						for(i=1;i<= 2;i++){
							printf(" N61(%ld,%ld,%ld,%ld%ld,%ld=%ld\n",n,m,l,k,j,i,N61(n,m,l,
							    k,j,i));
						}
					}
				}
			}
		}
	}

	for(I1=1;I1<=3;I1++){
		DS1=E11(I1);
		LS1=DS1 > 0.0;
		for(I2=1;I2<=6;I2+=2){
			for(I3=1;I3<=3;I3++){
				DS1=I3*N;
				for(I4=1;I4<=3;I4+=N){
					for(I5=1;I5<=3;I5++){
						L41(I5,I4,I3,I2)=LS1;
						for(I6=1;I6<=2;I6++){
							L61(I2,I1,I3,I4,I5,I6)=LS1 || (DS1 > 0.5);
						}
					}
				}
			}
			N41(I1,I2,I1,I2)=DS1;
		}
	}

	for(l=1;l<= 8;l++){
		for(k=1;k<= 8;k++){
			for(j=1;j<= 8;j++){
				for(i=1;i<= 8;i++){
					printf(" L41(%ld,%ld,%ld,%ld)=%ld\n",l,k,j,i,L41(l,k,j,i));
				}
			}
		}
	}
	for(n=1;n<= 5;n++){
		for(m=1;m<= 3;m++){
			for(l=1;l<= 3;l++){
				for(k=1;k<= 3;k++){
					for(j=1;j<= 3;j++){
						for(i=1;i<= 2;i++){
							printf(" L61(%ld,%ld,%ld,%ld%ld,%ld=%ld\n",n,m,l,k,j,i,L61(n,m,l,
							    k,j,i));
						}
					}
				}
			}
		}
	}
	for(l=1;l<= 8;l++){
		for(k=1;k<= 8;k++){
			for(j=1;j<= 8;j++){
				for(i=1;i<= 8;i++){
					printf(" N41(%ld,%ld,%ld,%ld)=%ld\n",l,k,j,i,N41(l,k,j,i));
				}
			}
		}
	}
	exit (0);
}
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define D13(i) d13[i-1]
#define D21(i,j) d21[i-1][j-1]
#define D22(i,j) d22[i-1][j-1]
#define D23(i,j) d23[i-1][j-1]
#define D31(i,j,k) d31[i-1][j-1][k-1]
#define D32(i,j,k) d32[i-1][j-1][k-1]
#define D33(i,j,k) d33[i-1][j-1][k-1]
#define D41(i,j,k,l) d41[i-1][j-1][k-1][l-1]
#define D42(i,j,k,l) d42[i-1][j-1][k-1][l-1]
#define D51(i,j,k,l,m) d51[i-1][j-1][k-1][l-1][m-1]
#define D52(i,j,k,l,m) d52[i-1][j-1][k-1][l-1][m-1]
#define D61(i,j,k,l,m,n) d61[i-1][j-1][k-1][l-1][m-1][n-1]
#define D62(i,j,k,l,m,n) d62[i-1][j-1][k-1][l-1][m-1][n-1]
#define E11(i) e11[i-1]
#define E12(i) e12[i-1]
#define E13(i) e13[i-1]
#define E21(i,j) e21[i-1][j-1]
#define E22(i,j) e22[i-1][j-1]
#define E23(i,j) e23[i-1][j-1]
#define E31(i,j,k) e31[i-1][j-1][k-1]
#define E32(i,j,k) e32[i-1][j-1][k-1]
#define E33(i,j,k) e33[i-1][j-1][k-1]
#define E41(i,j,k,l) e41[i-1][j-1][k-1][l-1]
#define E42(i,j,k,l) e42[i-1][j-1][k-1][l-1]
#define E51(i,j,k,l,m) e51[i-1][j-1][k-1][l-1][m-1]
#define E52(i,j,k,l,m) e52[i-1][j-1][k-1][l-1][m-1]
#define E61(i,j,k,l,m,n) e61[i-1][j-1][k-1][l-1][m-1][n-1]
#define E62(i,j,k,l,m,n) e62[i-1][j-1][k-1][l-1][m-1][n-1]
int INITR()
{
	
	long int I,J,K,L,M,N,I1,I2,I3,I4,I5,I6;
	for(I=1;I<=10;I++){
		E11(I)=0;
		E12(I)=0;
		E13(I)=0;
		for(J=1;J<=10;J++){
			E21(I,J)=0;
			E22(I,J)=0;
			E23(I,J)=0;
			for(K=1;K<=10;K++){
				E31(I,J,K)=0;
				E32(I,J,K)=0;
				E33(I,J,K)=0;
			}
		}
	}
	for(I=1;I<=8;I++){
		for(J=1;J<=8;J++){
			for(K=1;K<=8;K++){
				for(L=1;L<=8;L++){
					E41(I,J,K,L)=0;
					E42(I,J,K,L)=0;
					for(M=1;M<=5;M++){
						if ((I <= 5) && (J <= 5) && (K <= 5) && (L <= 5)){
							E51(I,J,K,L,M)=0;
							E52(I,J,K,L,M)=0;
						}
						for(N=1;N<=2;N++){
							if ((I <= 5) && (J <= 3)&& (K <= 3)&& (L <= 3)&& (M <= 3)){
								E61(I,J,K,L,M,N)=0;
								E62(I,J,K,L,M,N)=0;
							}
						}
					}
				}
			}
		}
	}
	for(I=1;I<=10;I++){
		D11(I)=0;
		D12(I)=0;
		D13(I)=0;
		for(J=1;J<=10;J++){
			D21(I,J)=0;
			D22(I,J)=0;
			D23(I,J)=0;
			for(K=1;K<=10;K++){
				D31(I,J,K)=0;
				D32(I,J,K)=0;
				D33(I,J,K)=0;
			}
		}
	}
	for(I=1;I<=8;I++){
		for(J=1;J<=8;J++){
			for(K=1;K<=8;K++){
				for(L=1;L<=8;L++){
					D41(I,J,K,L)=0;
					D42(I,J,K,L)=0;
					for(M=1;M<=5;M++){
						if ((I <= 5)&& (J <= 5)&& (K <= 5)&& (L <= 5)){
							D51(I,J,K,L,M)=0;
							D52(I,J,K,L,M)=0;
						}
						for(N=1;N<=2;N++){
							if ((I <= 5)&& (J <= 3)&& (K <= 3)&& (L <= 3)&& (M <= 3)){
								D61(I,J,K,L,M,N)=0;
								D62(I,J,K,L,M,N)=0;
							}
						}
					}
				}
			}
		}
	}
	ES3=3.5;
	for(I1=1;I1<=10;I1++){
		E11(I1)=I1;
		ES1=I1;
		E12(I1)=E11(I1)*ES1;
		E13(I1)=E12(I1);
		for(I2=2;I2<=10;I2++){
			E21(I1,I2)=E11(I1)/I2;
			E22(I1,I2)=I2*I1;
			ES1=I2/I1;
			if (I2 == 10) E22(I1,1)=0.;
			E21(I1,I2-1)=E21(I1,I2)*ES1;
			E23(I1,I2-1)=0.5;
			for(I3=1;I3<=10;I3++){
				E31(I3,I2,I1)=0.;
				E32(I3,I1,I2)=3.5;
				for(I4=1;I4<=4;I4++){
					ES2=I3+I4;
					if ((I1 <= 8)&& (I2 <= 8)&& (I3 <= 8)){
						E41(I1,I4,I3,I2)=ES2;
						E42(I1,I4+4,I2,I3)=ES2/4.;
					}
					for(I5=1;I5<=5;I5++){
						if ((I1 <= 5)&& (I2 <= 5)&& (I3 <= 5)&& (I4 <= 5)){
							E51(I1,I2,I3,I4,I5)=ES2;
							E52(I1,I2,I3,I4,I5)=ES2/2.;
						}
						for(I6=1;I6<=2;I6++){
							if((I1 <= 5)&& (I2 <= 3)&& (I3 <= 3)&& (I4 <= 3)&& (I5 <= 3)){
								E61(I1,I2,I3,I4,I5,I6)=0.5;
								E62(I1,I2,I3,I4,I5,I6)=100.5;
							}
						}
					}
					ES2=I4/2;
				}
				E33(I1,I2,I3)=ES2;
			}
		}
	}
	DS3=3.5;
	for(I1=1;I1<=10;I1++){
		D11(I1)=I1;
		DS1=I1;
		D12(I1)=D11(I1)*DS1;
		D13(I1)=D12(I1);
		for(I2=2;I2<=10;I2++){
			D21(I1,I2)=D11(I1)/I2;
			D22(I1,I2)=I2*I1;
			DS1=I2/I1;
			if (I2 == 10) D22(I1,1)=0.;
			D21(I1,I2-1)=D21(I1,I2)*DS1;
			D23(I1,I2-1)=0.5;
			for(I3=1;I3<=10;I3++){
				D31(I3,I2,I1)=0.;
				D32(I3,I1,I2)=3.5;
				for(I4=1;I4<=4;I4++){
					DS2=I3+I4;
					if ((I1 <= 8)&& (I2 <= 8)&& (I3 <= 8)){
						D41(I1,I4,I3,I2)=DS2;
						D42(I1,I4+4,I2,I3)=DS2/4.;
					}
					for(I5=1;I5<=5;I5++){
						if ((I1 <= 5)&& (I2 <= 5)&& (I3 <= 5)&& (I4 <= 5)){
							D51(I1,I2,I3,I4,I5)=DS2;
							D52(I1,I2,I3,I4,I5)=DS2/2.;
						}
						for(I6=1;I6<=2;I6++){
							if ((I1 <= 5)&& (I2 <= 3)&& (I3 <= 3)&& (I4 <= 3)&& (I5 <= 3)){
								D61(I1,I2,I3,I4,I5,I6)=0.5;
								D62(I1,I2,I3,I4,I5,I6)=100.5;
							}
						}
					}
					DS2=I4/2;
				}
				D33(I1,I2,I3)=DS2;
			}
		}
	}
	return 0;
}
#define CD11(i) cd11[i-1]
#define CD12(i) cd12[i-1]
#define CD13(i) cd13[i-1]
#define CD21(i,j) cd21[i-1][j-1]
#define CD22(i,j) cd22[i-1][j-1]
#define CD23(i,j) cd23[i-1][j-1]
#define CD31(i,j,k) cd31[i-1][j-1][k-1]
#define CD32(i,j,k) cd32[i-1][j-1][k-1]
#define CD33(i,j,k) cd33[i-1][j-1][k-1]
#define CD41(i,j,k,l) cd41[i-1][j-1][k-1][l-1]
#define CD42(i,j,k,l) cd42[i-1][j-1][k-1][l-1]
#define CD51(i,j,k,l,m) cd51[i-1][j-1][k-1][l-1][m-1]
#define CD52(i,j,k,l,m) cd52[i-1][j-1][k-1][l-1][m-1]
#define CD61(i,j,k,l,m,n) cd61[i-1][j-1][k-1][l-1][m-1][n-1]
#define CD62(i,j,k,l,m,n) cd62[i-1][j-1][k-1][l-1][m-1][n-1]
#define CE11(i) ce11[i-1]
#define CE12(i) ce12[i-1]
#define CE13(i) ce13[i-1]
#define CE21(i,j) ce21[i-1][j-1]
#define CE22(i,j) ce22[i-1][j-1]
#define CE23(i,j) ce23[i-1][j-1]
#define CE31(i,j,k) ce31[i-1][j-1][k-1]
#define CE32(i,j,k) ce32[i-1][j-1][k-1]
#define CE33(i,j,k) ce33[i-1][j-1][k-1]
#define CE41(i,j,k,l) ce41[i-1][j-1][k-1][l-1]
#define CE42(i,j,k,l) ce42[i-1][j-1][k-1][l-1]
#define CE51(i,j,k,l,m) ce51[i-1][j-1][k-1][l-1][m-1]
#define CE52(i,j,k,l,m) ce52[i-1][j-1][k-1][l-1][m-1]
#define CE61(i,j,k,l,m,n) ce61[i-1][j-1][k-1][l-1][m-1][n-1]
#define CE62(i,j,k,l,m,n) ce62[i-1][j-1][k-1][l-1][m-1][n-1]
int INITC()
{
	
	long int I,J,K,L,M,N,I1,I2,I3,I4,I5,I6;
	for(I=1;I<=10;I++){
		ce11[I-1].real=0.;
		ce11[I-1].imag=0.;
		ce12[I-1].real=0.;
		ce12[I-1].imag=0.;
		ce13[I-1].real=0.;
		ce13[I-1].imag=0.;
		for(J=1;J<=10;J++){
			ce21[I-1][J-1].real=0.;
			ce21[I-1][J-1].imag=0.;
			ce22[I-1][J-1].real=0.;
			ce22[I-1][J-1].imag=0.;
			ce23[I-1][J-1].real=0.;
			ce23[I-1][J-1].imag=0.;
			for(K=1;K<=10;K++){
				ce31[I-1][J-1][K-1].real=0.;
				ce31[I-1][J-1][K-1].imag=0.;
				ce32[I-1][J-1][K-1].real=0.;
				ce32[I-1][J-1][K-1].imag=0.;
				ce33[I-1][J-1][K-1].real=0.;
				ce33[I-1][J-1][K-1].imag=0.;
			}
		}
	}
	for(I=1;I<=8;I++){
		for(J=1;J<=8;J++){
			for(K=1;K<=8;K++){
				for(L=1;L<=8;L++){
					ce41[I-1][J-1][K-1][L-1].real=0.;
					ce41[I-1][J-1][K-1][L-1].imag=0.;
					ce42[I-1][J-1][K-1][L-1].real=0.;
					ce42[I-1][J-1][K-1][L-1].imag=0.;
					cd41[I-1][J-1][K-1][L-1].dreal=0.;
					cd41[I-1][J-1][K-1][L-1].dimag=0.;
					cd42[I-1][J-1][K-1][L-1].dreal=0.;
					cd42[I-1][J-1][K-1][L-1].dimag=0.;
					for(M=1;M<=5;M++){
						if (I <= 5 &&  J <= 5 &&  K <= 5 &&  L <= 5){
							ce51[I-1][J-1][K-1][L-1][M-1].real=0.;
							ce51[I-1][J-1][K-1][L-1][M-1].imag=0.;
							ce52[I-1][J-1][K-1][L-1][M-1].real=0.;
							ce52[I-1][J-1][K-1][L-1][M-1].imag=0.;
							cd51[I-1][J-1][K-1][L-1][M-1].dreal=0.;
							cd51[I-1][J-1][K-1][L-1][M-1].dimag=0.;
							cd52[I-1][J-1][K-1][L-1][M-1].dreal=0.;
							cd52[I-1][J-1][K-1][L-1][M-1].dimag=0.;
						}
						for(N=1;N<=2;N++){
							if (I <= 5 &&  J <= 3 &&  K <= 3 &&  L <= 3 &&  M <= 3){
								ce61[I-1][J-1][K-1][L-1][M-1][N-1].real=0.;
								ce61[I-1][J-1][K-1][L-1][M-1][N-1].imag=0.;
								ce62[I-1][J-1][K-1][L-1][M-1][N-1].real=0.;
								ce62[I-1][J-1][K-1][L-1][M-1][N-1].imag=0.;
								cd61[I-1][J-1][K-1][L-1][M-1][N-1].dreal=0.;
								cd61[I-1][J-1][K-1][L-1][M-1][N-1].dimag=0.;
								cd62[I-1][J-1][K-1][L-1][M-1][N-1].dreal=0.;
								cd62[I-1][J-1][K-1][L-1][M-1][N-1].dimag=0.;
							}
						}
					}
				}
			}
		}
	}

	ces3.real=3.5;
	ces3.imag=-3.5;
	for(I1=1;I1<=10;I1++){
		ce11[I1-1].real=I1+1.;
		ce11[I1-1].imag=.5;
		ces1.real=0.;
		ces1.imag=-I1;
		ce12[I1-1].real=ce11[I1-1].real*ces1.real-ce11[I1-1].imag*ces1.imag;
		ce12[I1-1].imag=ce11[I1-1].real*ces1.imag+ce11[I1-1].imag*ces1.real;
		ce13[I1-1].real=ce12[I1-1].real;
		ce13[I1-1].imag=ce12[I1-1].imag;
		for(I2=2;I2<=10;I2++){
			ce21[I1-1][I2-1].real=ce11[I1-1].real/I2;
			ce21[I1-1][I2-1].imag=ce11[I1-1].imag/I2;
			ce22[I1-1][I2-1].real=0.;
			ce22[I1-1][I2-1].imag=I2*I1*2.;
			ces1.real=I2/I1-1.;
			ces1.imag=-1.;
			if (I2 == 10){
				ce22[I1-1][0].real=(float)(I1);
				ce22[I1-1][0].imag=(float)(I2);
			}
			ce21[I1-1][I2-2].real=ce21[I1-1][I2-1].real*ces1.real-                                          
			    ce21[I1-1][I2-1].imag*ces1.imag;
			ce21[I1-1][I2-2].imag=ce21[I1-1][I2-1].real*ces1.imag+                                          
			    ce21[I1-1][I2-1].imag*ces1.real;
			ce23[I1-1][I2-2].real=0.5-ce21[I1-1][I2-2].real;
			ce23[I1-1][I2-2].imag=-ce21[I1-1][I2-2].imag;
			for(I3=1;I3<=10;I3++){
				ce31[I3-1][I2-1][I1-1].real=0.;
				ce31[I3-1][I2-1][I1-1].imag=0.;
				ce32[I3-1][I1-1][I2-1].real=3.5;
				ce32[I3-1][I1-1][I2-1].imag=0.;
				for(I4=1;I4<=4;I4++){
					ces2.real=(float)(I3);
					ces2.imag=(float)(I4);
					if (I1 <= 8 &&  I2 <= 8 &&  I3 <= 8){
						ce41[I1-1][I4-1][I3-1][I2-1].real=ces2.real;
						ce41[I1-1][I4-1][I3-1][I2-1].imag=ces2.imag;
						ce42[I1-1][I4+3][I2-1][I3-1].real=ces2.real/4.;
						ce42[I1-1][I4+3][I2-1][I3-1].imag=ces2.imag/4.;
					}
					for(I5=1;I5<=5;I5++){
						if (I1 <= 5 &&  I2 <= 5 &&  I3 <= 5 &&  I4 <= 5){
							ce51[I1-1][I2-1][I3-1][I4-1][I5-1].real=ces2.real;
							ce51[I1-1][I2-1][I3-1][I4-1][I5-1].imag=ces2.imag;
							ce52[I1-1][I2-1][I3-1][I4-1][I5-1].real=ces2.real/2;
							ce52[I1-1][I2-1][I3-1][I4-1][I5-1].imag=ces2.imag/2;
						}
						for(I6=1;I6<=2;I6++){
							if (I1 <= 5 &&  I2 <= 3 &&  I3 <= 3 &&  I4 <= 3 &&  I5 <= 3){
								ce61[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].real=.5;
								ce61[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].imag=.5;
								ce62[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].real=100.5;
								ce62[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].imag=100;
							}
						}
					}
					ces2.real=I4/2+sqrt((float)(0));
					ces2.imag=sqrt((float)(I4));
				}
				ce33[I1-1][I2-1][I3-1].real=ces2.real;
				ce33[I1-1][I2-1][I3-1].imag=ces2.imag;
			}
		}
	}

	cds3.dreal=3.5;
	cds3.dimag=-3.5;
	for(I1=1;I1<=10;I1++){
		cd11[I1-1].dreal=I1+1.;
		cd11[I1-1].dimag=.5;
		cds1.dreal=0.;
		cds1.dimag=-I1;
		cd12[I1-1].dreal=cd11[I1-1].dreal*cds1.dreal-cd11[I1-1].dimag*cds1.dimag;
		cd12[I1-1].dimag=cd11[I1-1].dreal*cds1.dimag+cd11[I1-1].dimag*cds1.dreal;
		cd13[I1-1].dreal=cd12[I1-1].dreal;
		cd13[I1-1].dimag=cd12[I1-1].dimag;
		for(I2=2;I2<=10;I2++){
			cd21[I1-1][I2-1].dreal=cd11[I1-1].dreal/I2;
			cd21[I1-1][I2-1].dimag=cd11[I1-1].dimag/I2;
			cd22[I1-1][I2-1].dreal=0.;
			cd22[I1-1][I2-1].dimag=I2*I1*2.;
			cds1.dreal=I2/I1-1.;
			cds1.dimag=-1.;
			if (I2 == 10){
				cd22[I1-1][0].dreal=(double)(I1);
				cd22[I1-1][0].dimag=(double)(I2);
			}
			cd21[I1-1][I2-2].dreal=cd21[I1-1][I2-1].dreal*cds1.dreal-                                       
			    cd21[I1-1][I2-1].dimag*cds1.dimag;
			cd21[I1-1][I2-2].dimag=cd21[I1-1][I2-1].dreal*cds1.dimag+                                       
			    cd21[I1-1][I2-1].dimag*cds1.dreal;
			cd23[I1-1][I2-2].dreal=0.5-cd21[I1-1][I2-2].dreal;
			cd23[I1-1][I2-2].dimag=-cd21[I1-1][I2-2].dimag;
			for(I3=1;I3<=10;I3++){
				cd31[I3-1][I2-1][I1-1].dreal=0.;
				cd31[I3-1][I2-1][I1-1].dimag=0.;
				cd32[I3-1][I1-1][I2-1].dreal=3.5;
				cd32[I3-1][I1-1][I2-1].dimag=0.;
				for(I4=1;I4<=4;I4++){
					cds2.dreal=(float)(I3);
					cds2.dimag=(float)(I4);
					if (I1 <= 8 &&  I2 <= 8 &&  I3 <= 8){
						cd41[I1-1][I4-1][I3-1][I2-1].dreal=cds2.dreal;
						cd41[I1-1][I4-1][I3-1][I2-1].dimag=cds2.dimag;
						cd42[I1-1][I4+3][I2-1][I3-1].dreal=cds2.dreal/4.;
						cd42[I1-1][I4+3][I2-1][I3-1].dimag=cds2.dimag/4.;
					}
					for(I5=1;I5<=5;I5++){
						if (I1 <= 5 &&  I2 <= 5 &&  I3 <= 5 &&  I4 <= 5){
							cd51[I1-1][I2-1][I3-1][I4-1][I5-1].dreal=cds2.dreal;
							cd51[I1-1][I2-1][I3-1][I4-1][I5-1].dimag=cds2.dimag;
							cd52[I1-1][I2-1][I3-1][I4-1][I5-1].dreal=cds2.dreal/2;
							cd52[I1-1][I2-1][I3-1][I4-1][I5-1].dimag=cds2.dimag/2;
						}
						for(I6=1;I6<=2;I6++){
							if (I1 <= 5 &&  I2 <= 3 &&  I3 <= 3 &&  I4 <= 3 &&  I5 <= 3){
								cd61[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].dreal=.5;
								cd61[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].dimag=.5;
								cd62[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].dreal=100.5;
								cd62[I1-1][I2-1][I3-1][I4-1][I5-1][I6-1].dimag=100;
							}
						}
					}
					cds2.dreal=I4/2+sqrt((float)(0));
					cds2.dimag=sqrt((float)(I4));
				}
				cd33[I1-1][I2-1][I3-1].dreal=cds2.dreal;
				cd33[I1-1][I2-1][I3-1].dimag=cds2.dimag;
			}
		}
	}
	return 0;
}
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
#define I21(i,j) i21[i-1][j-1]
#define I22(i,j) i22[i-1][j-1]
#define I23(i,j) i23[i-1][j-1]
#define I31(i,j,k) i31[i-1][j-1][k-1]
#define I32(i,j,k) i32[i-1][j-1][k-1]
#define I33(i,j,k) i33[i-1][j-1][k-1]
#define I41(i,j,k,l) i41[i-1][j-1][k-1][l-1]
#define I42(i,j,k,l) i42[i-1][j-1][k-1][l-1]
#define I51(i,j,k,l,m) i51[i-1][j-1][k-1][l-1][m-1]
#define I52(i,j,k,l,m) i52[i-1][j-1][k-1][l-1][m-1]
#define I61(i,j,k,l,m,n) i61[i-1][j-1][k-1][l-1][m-1][n-1]
#define I62(i,j,k,l,m,n) i62[i-1][j-1][k-1][l-1][m-1][n-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L21(i,j) l21[i-1][j-1]
#define L22(i,j) l22[i-1][j-1]
#define L23(i,j) l23[i-1][j-1]
#define L31(i,j,k) l31[i-1][j-1][k-1]
#define L32(i,j,k) l32[i-1][j-1][k-1]
#define L33(i,j,k) l33[i-1][j-1][k-1]
#define L41(i,j,k,l) l41[i-1][j-1][k-1][l-1]
#define L42(i,j,k,l) l42[i-1][j-1][k-1][l-1]
#define L51(i,j,k,l,m) l51[i-1][j-1][k-1][l-1][m-1]
#define L52(i,j,k,l,m) l52[i-1][j-1][k-1][l-1][m-1]
#define L61(i,j,k,l,m,n) l61[i-1][j-1][k-1][l-1][m-1][n-1]
#define L62(i,j,k,l,m,n) l62[i-1][j-1][k-1][l-1][m-1][n-1]
int INITIL()
{
	long int i11[10],i12[10],i13[10];
	long int IS1,IS2,IS3;
	long int i21[10][10],i22[10][10],i23[10][10];
	long int i31[10][10][10],i32[10][10][10],i33[10][10][10];
	long int i41[8][8][8][8],i42[8][8][8][8];
	long int i51[5][5][5][5][5],i52[5][5][5][5][5];
	long int i61[5][3][3][3][3][2],i62[5][3][3][3][3][2];
	
	long int I,J,K,L,M,N,I1,I2,I3,I4,I5,I6;
	for(I=1;I<=10;I++){
		I11(I)=0;
		I12(I)=0;
		I13(I)=0;
		for(J=1;J<=10;J++){
			I21(I,J)=0;
			I22(I,J)=0;
			I23(I,J)=0;
			for(K=1;K<=10;K++){
				I31(I,J,K)=0;
				I32(I,J,K)=0;
				I33(I,J,K)=0;
			}
		}
	}
	for(I=1;I<=8;I++){
		for(J=1;J<=8;J++){
			for(K=1;K<=8;K++){
				for(L=1;L<=8;L++){
					I41(I,J,K,L)=0;
					I42(I,J,K,L)=0;
					for(M=1;M<=5;M++){
						if (I <= 5 &&  J <= 5 &&  K <= 5 &&  L <= 5){
							I51(I,J,K,L,M)=0;
							I52(I,J,K,L,M)=0;
						}
						for(N=1;N<=2;N++){
							if (I <= 5 &&  J <= 3 &&  K <= 3 &&  L <= 3 &&  M <= 3){
								I61(I,J,K,L,M,N)=0;
								I62(I,J,K,L,M,N)=0;
							}
						}
					}
				}
			}
		}
	}
	for(I=1;I<=10;I++){
		L11(I)=0;
		L12(I)=0;
		L13(I)=0;
		for(J=1;J<=10;J++){
			L21(I,J)=0;
			L22(I,J)=0;
			L23(I,J)=0;
			for(K=1;K<=10;K++){
				L31(I,J,K)=0;
				L32(I,J,K)=0;
				L33(I,J,K)=0;
			}
		}
	}
	for(I=1;I<=8;I++){
		for(J=1;J<=8;J++){
			for(K=1;K<=8;K++){
				for(L=1;L<=8;L++){
					L41(I,J,K,L)=0;
					L42(I,J,K,L)=0;
					for(M=1;M<=5;M++){
						if (I <= 5 &&  J <= 5 &&  K <= 5 &&  L <= 5){
							L51(I,J,K,L,M)=0;
							L52(I,J,K,L,M)=0;
						}
						for(N=1;N<=2;N++){
							if (I <= 5 &&  J <= 3 &&  K <= 3 &&  L <= 3 &&  M <= 3){
								L61(I,J,K,L,M,N)=0;
								L62(I,J,K,L,M,N)=0;
							}
						}
					}
				}
			}
		}
	}
	IS3=104;
	for(I1=1;I1<=10;I1++){
		I11(I1)=I1;
		IS1=I1;
		I12(I1)=I11(I1)*IS1;
		I13(I1)=I12(I1);
		for(I2=2;I2<=10;I2++){
			I21(I1,I2)=I11(I1)*10/I2;
			I22(I1,I2)=I2*I1;
			IS1=I2/I1+IS3;
			if (I2 == 10) I22(I1,1)=0.;
			I21(I1,I2-1)=I21(I1,I2)*IS1;
			I23(I1,I2-1)=0.5;
			for(I3=1;I3<=10;I3++){
				I31(I3,I2,I1)=0.;
				I32(I3,I1,I2)=3.5;
				for(I4=1;I4<=4;I4++){
					IS2=I3+I4;
					if (I1 <= 8 &&  I2 <= 8 &&  I3 <= 8){
						I41(I1,I4,I3,I2)=IS2;
						I42(I1,I4+4,I2,I3)=IS2/3;
					}
					for(I5=1;I5<=5;I5++){
						if (I1 <= 5 &&  I2 <= 5 &&  I3 <= 5 &&  I4 <= 5){
							I51(I1,I2,I3,I4,I5)=IS2;
							I52(I1,I2,I3,I4,I5)=IS2/2.;
						}
						for(I6=1;I6<=2;I6++){
							if (I1 <= 5 &&  I2 <= 3 &&  I3 <= 3 &&  I4 <= 3 &&  I5 <= 3){
								I61(I1,I2,I3,I4,I5,I6)=0.5;
								I62(I1,I2,I3,I4,I5,I6)=100.5;
							}
						}
					}
					IS2=I4/2;
				}
				I33(I1,I2,I3)=IS2;
			}
		}
	}
	LS3=1;
	for(I1=1;I1<=10;I1++){
		L11(I1)=LS3;
		LS1=I1>=3;
		L12(I1)=L11(I1)&&LS1;
		L13(I1)=L12(I1);
		for(I2=2;I2<=10;I2++){
			L21(I1,I2)=L11(I1);
			L22(I1,I2)=I2>I1;
			LS1=I2/I1!=0;
			if (I2 == 10) L22(I1,1)=0;
			L21(I1,I2-1)=L21(I1,I2)&&LS1;
			L23(I1,I2-1)= (I2%2) == 0;
			for(I3=1;I3<=10;I3++){
				L31(I3,I2,I1)=LS3;
				L32(I3,I1,I2)=LS1;
				for(I4=1;I4<=4;I4++){
					LS2=I3<=I4;
					if (I1 <= 8 &&  I2 <= 8 &&  I3 <= 8){
						L41(I1,I4,I3,I2)=LS2;
						L42(I1,I4+4,I2,I3)=LS2;
					}
					for(I5=1;I5<=5;I5++){
						if (I1 <= 5 &&  I2 <= 5 &&  I3 <= 5 &&  I4 <= 5){
							L51(I1,I2,I3,I4,I5)=LS2;
							L52(I1,I2,I3,I4,I5)=LS2&& (I5 >= 3);
						}
						for(I6=1;I6<=2;I6++){
							if (I1 <= 5 &&  I2 <= 3 &&  I3 <= 3 &&  I4 <= 3 &&  I5 <= 3){
								L61(I1,I2,I3,I4,I5,I6)=0;
								L62(I1,I2,I3,I4,I5,I6)=1;
							}
						}
					}
					LS2=(I3%2) != 0;
				}
				L33(I1,I2,I3)=LS2;
			}
		}
	}
	return 0;
}
