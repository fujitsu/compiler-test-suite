#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
	float a[5];
} a041;
struct st2{
	float a[5][5];
} a042;
struct st3{
	float a[5][5][5];
} a043;
struct st4{
	float a[5][5][5][5];
} a044;
struct st5{
	float a[5][5][5][5][5];
} a045;
struct st6{
	float a[5][5][5][5][5][5];
} a046;
struct st7{
	float a[5][5][5][5][5][5][5];
} a047;
int main()
{
	long int i1,i2,i3,i4,i5,i6,i7,i8;
	long int i,j,k,l,m,n,o,p;
	for(i=0;i<5;i++){
		a041.a[i]=0.01;
	}
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			a042.a[i][j]=1.0;
		}
	}
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				a043.a[i][j][k]=1.0;
			}
		}
	}
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					a044.a[i][j][k][l]=1.0;
				}
			}
		}
	}
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						a045.a[i][j][k][l][m]=1.0;
					}
				}
			}
		}
	}
	for(n=0;n<5;n++){
		for(m=0;m<5;m++){
			for(l=0;l<5;l++){
				for(k=0;k<5;k++){
					for(j=0;j<5;j++){
						for(i=0;i<5;i++){
							a046.a[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(o=0;o<5;o++){
		for(n=0;n<5;n++){
			for(m=0;m<5;m++){
				for(l=0;l<5;l++){
					for(k=0;k<5;k++){
						for(j=0;j<5;j++){
							for(i=0;i<5;i++){
								a047.a[i][j][k][l][m][n][o]=1.0;
							}
						}
					}
				}
			}
		}
	}
	for(i1=0;i1<3;i1+=3){
		for(i2=0;i2<3;i2+=3){
			for(i3=0;i3<3;i3+=3){
				for(i4=0;i4<3;i4+=3){
					for(i5=0;i5<3;i5+=3){
						for(i6=0;i6<3;i6+=3){
							for(i7=0;i7<3;i7+=3){
								for(i8=0;i8<3;i8+=3){

	
	a041.a[i1+1]=a047.a[i1][i2][i3][i4][i5][i6][i7];
	a042.a[i1][i2+1]=a041.a[i1];
	a043.a[i1][i2][i3+1]=a042.a[i1][i2];
	a044.a[i1][i2][i3][i4+1]=a043.a[i1][i2][i3];
	a045.a[i1][i2][i3][i4][i5+1]=a044.a[i1][i2][i3][i4];
	a046.a[i1][i2][i3][i4][i5][i6+1]=
	    a045.a[i1][i2][i3][i4][i5];
	a047.a[i1][i2][i3][i4][i5][i6][i7+1]=
	    a046.a[i1][i2][i3][i4][i5][i6];
	a041.a[i1]=a047.a[i1][i2][i3][i4][i5][i6][i7+1];
	a042.a[i1][i2]=a041.a[i1+1];
	a043.a[i1][i2][i3]=a042.a[i1][i2+1];
	a044.a[i1][i2][i3][i4]=a043.a[i1][i2][i3+1];
	a045.a[i1][i2][i3][i4][i5]=a044.a[i1][i2][i3][i4+1];
	a046.a[i1][i2][i3][i4][i5][i6]=
	    a045.a[i1][i2][i3][i4][i5+1];
	a047.a[i1][i2][i3][i4][i5][i6][i7]=
	    a046.a[i1][i2][i3][i4][i5][i6+1];
	

								}
							}
						}
					}
				}
			}
		}
	}
	n=0;
	printf("    =*=*=a044[0:4][0:4][0:4][0:4]=*=*=\n");
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					n++;
					printf("    a044[%d][%d][%d][%d] ==>  %10.7f  |",
					    i,j,k,l,a044.a[i][j][k][l]);
					if((n%2)==0) printf("\n");
				}
			}
		}
	}
	printf("\n");
	n=0;
	printf("    =*=*=a045[0:4][0:4][0:4][0:4][0:4]=*=*=\n");
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						n++;
						printf("  a045[%d][%d][%d][%d][%d] ==> %10.7f  |",
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
