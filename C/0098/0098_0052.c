#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
	float a[2];
} a041;
struct st2{
	float a[2][3];
} a042;
struct st3{
	float a[2][3][4];
} a043;
struct st4{
	float a[2][3][4][5];
} a044;
struct st5{
	float a[2][3][4][5][6];
} a045;
struct st6{
	float a[2][3][4][5][6][7];
} a046;
struct st7{
	float a[2][3][4][5][6][7][8];
} a047;
int main()
{
	long int i1,i2,i3,i4,i5,i6,i7,i8;
	long int i,j,k,l,m,n,o;
	for(i=0;i<2;i++){
		a041.a[i]=0.01;
	}
	for(j=0;j<3;j++){
		for(i=0;i<2;i++){
			a042.a[i][j]=1.0;
		}
	}
	for(k=0;k<4;k++){
		for(j=0;j<3;j++){
			for(i=0;i<2;i++){
				a043.a[i][j][k]=1.0;
			}
		}
	}
	for(l=0;l<5;l++){
		for(k=0;k<4;k++){
			for(j=0;j<3;j++){
				for(i=0;i<2;i++){
					a044.a[i][j][k][l]=1.0;
				}
			}
		}
	}
	for(m=0;m<6;m++){
		for(l=0;l<5;l++){
			for(k=0;k<4;k++){
				for(j=0;j<3;j++){
					for(i=0;i<2;i++){
						a045.a[i][j][k][l][m]=1.0;
					}
				}
			}
		}
	}
	for(n=0;n<7;n++){
		for(m=0;m<6;m++){
			for(l=0;l<5;l++){
				for(k=0;k<4;k++){
					for(j=0;j<3;j++){
						for(i=0;i<2;i++){
							a046.a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(o=0;o<8;o++){
		for(n=0;n<7;n++){
			for(m=0;m<6;m++){
				for(l=0;l<5;l++){
					for(k=0;k<4;k++){
						for(j=0;j<3;j++){
							for(i=0;i<2;i++){
								a047.a[i][j][k][l][m][n][o]=1.0;
							}
						}
					}
				}
			}
		}
	}
	for(i1=0;i1<2;i1++){
		for(i2=i1;i2<i1+1;i2+=(i1+1)){
			for(i3=i2;i3<i2+1;i3+=(i2+1)){
				for(i4=i3;i4<i3+1;i4+=(i3+1)){
					for(i5=i4;i5<i4+1;i5+=(i4+1)){
						for(i6=i5;i6<i5+1;i6+=(i5+1)){
							for(i7=i6;i7<i6+1;i7+=(i6+1)){
								for(i8=i7;i8<i7+1;i8+=(i7+1)){

	
	a041.a[i1]=a041.a[i1]+i8+1;
	a042.a[i1][i2]=a041.a[i1]+i8+1;
	a043.a[i1][i2][i3]=a042.a[i1][i2]+i8+1;
	a044.a[i1][i2][i3][i4]=a043.a[i1][i2][i3]+i8+1;
	a045.a[i1][i2][i3][i4][i5]=a044.a[i1][i2][i3][i4]+i8+1;
	a046.a[i1][i2][i3][i4][i5][i6]=a045.a[i1][i2][i3][i4][i5]+i8+1;
	a047.a[i1][i2][i3][i4][i5][i6][i7]=
	    a046.a[i1][i2][i3][i4][i5][i6]+i8+1;
	

								}
							}
						}
					}
				}
			}
		}
	}
	n=0;
	printf("    =*=*=A044[0:1][0:2][0:3][0:4]=*=*=\n");
	for(l=0;l<5;l++){
		for(k=0;k<4;k++){
			for(j=0;j<3;j++){
				for(i=0;i<2;i++){
					n++;
					printf("    A044[%d][%d][%d][%d] ==>  %10.7f  |",
					    i,j,k,l,a044.a[i][j][k][l]);
					if((n%2)==0) printf("\n");
				}
			}
		}
	}
	printf("\n");
	n=0;
	printf("    =*=*=A045[0:1][0:2][0:3][0:4][0:5]=*=*=\n");
	for(m=0;m<6;m++){
		for(l=0;l<5;l++){
			for(k=0;k<4;k++){
				for(j=0;j<3;j++){
					for(i=0;i<2;i++){
						n++;
						printf("  A045[%d][%d][%d][%d][%d] ==> %10.7f  |",
						    i,j,k,l,m,a045.a[i][j][k][l][m]);
						if((n%2)==0) printf("\n");
					}
				}
			}
		}
	}
	printf("\n");
	exit (0);
}
