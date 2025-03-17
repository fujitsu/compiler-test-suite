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
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			a042[i][j]=1.0;
		}
	}
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				a043[i][j][k]=1.0;
			}
		}
	}
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					a044[i][j][k][l]=1.0;
				}
			}
		}
	}
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						a045[i][j][k][l][m]=1.0;
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
							a046[i][j][k][l][m][n]=1.0;
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
								a047[i][j][k][l][m][n][o]=1.0;
							}
						}
					}
				}
			}
		}
	}
	for(i1=2;i1<5;i1+=3){
		for(i2=2;i2<5;i2+=3){
			for(i3=2;i3<5;i3+=3){
				for(i4=2;i4<5;i4+=3){
					for(i5=2;i5<5;i5+=3){
						for(i6=2;i6<5;i6+=3){
							for(i7=2;i7<5;i7+=3){
								for(i8=2;i8<5;i8+=3){

	
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
