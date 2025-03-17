#include <stdlib.h>
#include <math.h>
#include <stdio.h>


















int main()
{
	float a041[5];
	float a042[5][5];
	float a043[5][5][5];
	float a044[5][5][5][5];
	float a045[5][5][5][5][5];
	float a046[5][5][5][5][5][5];
	float a047[5][5][5][5][5][5][5];
	long int i1,i2,i3,i4,i5,i6,i7,i8;
	long int i,j,k,l,m,n,o,p;
	for(i=0;i<5;i++){
		a041[i]=0.01;
	}
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					a044[i][j][k][l]=0;
				}
			}
		}
	}
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						a045[i][j][k][l][m]=0;
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

	
	a041[i1]=a041[i1]+i8-2;
	a042[i1][i2]=a041[i1]+i8-2;
	a043[i1][i2][i3]=a042[i1][i2]+i8-2;
	a044[i1][i2][i3][i4]=a043[i1][i2][i3]+i8-2;
	a045[i1][i2][i3][i4][i5]=a044[i1][i2][i3][i4]+i8-2;
	a046[i1][i2][i3][i4][i5][i6]=a045[i1][i2][i3][i4][i5]+i8-2;
	a047[i1][i2][i3][i4][i5][i6][i7]=
	    a046[i1][i2][i3][i4][i5][i6]+i8-2;
	

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
					    i,j,k,l,a044[i][j][k][l]);
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
						    i,j,k,l,m,a045[i][j][k][l][m]);
						if((n%2)==0) printf("\n");
					}
				}
			}
		}
	}
	printf("\n");
	exit (0);
}
