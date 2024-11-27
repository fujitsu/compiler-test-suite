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
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					a044.a[i][j][k][l]=0;
				}
			}
		}
	}
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						a045.a[i][j][k][l][m]=0;
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

	
	a041.a[i1]=a041.a[i1]+i8-2;
	a042.a[i1][i2]=a041.a[i1]+i8-2;
	a043.a[i1][i2][i3]=a042.a[i1][i2]+i8-2;
	a044.a[i1][i2][i3][i4]=a043.a[i1][i2][i3]+i8-2;
	a045.a[i1][i2][i3][i4][i5]=a044.a[i1][i2][i3][i4]+i8-2;
	a046.a[i1][i2][i3][i4][i5][i6]=a045.a[i1][i2][i3][i4][i5]+i8-2;
	a047.a[i1][i2][i3][i4][i5][i6][i7]=
	    a046.a[i1][i2][i3][i4][i5][i6]+i8-2;
	

								}
							}
						}
					}
				}
			}
		}
	}
	n=0;
	printf("    =*=*=A044[0:4][0:4][0:4][0:4]=*=*=\n");
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
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
	printf("    =*=*=A045[0:4][0:4][0:4][0:4][0:4]=*=*=\n");
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
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

