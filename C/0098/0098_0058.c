#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
	float a[7];
} a041;
struct st2{
	float a[5][7];
} a042;
struct st3{
	float a[5][5][7];
} a043;
struct st4{
	float a[5][5][5][7];
} a044;
struct st5{
	float a[5][5][5][5][7];
} a045;
struct st6{
	float a[5][5][5][5][5][7];
} a046;
struct st7{
	float a[5][5][5][5][5][5][7];
} a047;
int main()
{
	long int i1,i2,i3,i4,i5,i6,i7,i8;
	long int i,j,k,l,m,n,o,p;
	for(i=0;i<5;i++){
		a041.a[i]=0.01;
	}
	for(l=0;l<7;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					a044.a[i][j][k][l]=1.0;
				}
			}
		}
	}
	for(m=0;m<7;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						a045.a[i][j][k][l][m]=0.1;
					}
				}
			}
		}
	}
	for(i1=0;i1<2;i1++){
		for(i2=0;i2<2;i2++){
			for(i3=0;i3<2;i3++){
				for(i4=0;i4<2;i4++){
					for(i5=0;i5<2;i5++){
						for(i6=0;i6<2;i6++){
							for(i7=0;i7<2;i7++){
								for(i8=0;i8<2;i8++){

	
	a041.a[i1]=i1+i2+i3+i4+i5+i6+i7+i8-16;
	a042.a[i1][i2]=i1+i2+i3+i4+i5+i6+i7+i8-16;
	a043.a[i1][i2][i3]=i1+i2+i3+i4+i5+i6+i7+i8-16;
	a044.a[i1][i2][i3][i4]=i1+i2+i3+i4+i5+i6+i7+i8-16;
	a045.a[i1][i2][i3][i4][i5]=i1+i2+i3+i4+i5+i6+i7+i8-16;
	a046.a[i1][i2][i3][i4][i5][i6]=i1+i2+i3+i4+i5+i6+i7+i8-16;
	a047.a[i1][i2][i3][i4][i5][i6][i7]=
	    i1+i2+i3+i4+i5+i6+i7+i8-16;
	a041.a[i1+1]=(i8-2)+a047.a[i1][i2][i3][i4][i5][i6][i7];
	a042.a[i1][i2+1]=(i8-2)+a041.a[i1];
	a043.a[i1][i2][i3+1]=(i8-2)+a042.a[i1][i2];
	a044.a[i1][i2][i3][i4+1]=(i8-2)+a043.a[i1][i2][i3];
	a045.a[i1][i2][i3][i4][i5+1]=(i8-2)+a044.a[i1][i2][i3][i4];
	a046.a[i1][i2][i3][i4][i5][i6+1]=
	    (i8-2)+a045.a[i1][i2][i3][i4][i5];
	a047.a[i1][i2][i3][i4][i5][i6][i7+1]=
	    (i8-2)+a046.a[i1][i2][i3][i4][i5][i6];

	a041.a[i1+2]=(i8-2)+a047.a[i1][i2][i3][i4][i5][i6][i7];
	a042.a[i1][i2+2]=(i8-2)+a041.a[i1];
	a043.a[i1][i2][i3+2]=(i8-2)+a042.a[i1][i2];
	a044.a[i1][i2][i3][i4+2]=(i8-2)+a043.a[i1][i2][i3];
	a045.a[i1][i2][i3][i4][i5+2]=(i8-2)+a044.a[i1][i2][i3][i4];
	a046.a[i1][i2][i3][i4][i5][i6+2]=
	    (i8-2)+a045.a[i1][i2][i3][i4][i5];
	a047.a[i1][i2][i3][i4][i5][i6][i7+2]=
	    (i8-2)+a046.a[i1][i2][i3][i4][i5][i6];

	a041.a[i1+3]=(i8-2)+a047.a[i1][i2][i3][i4][i5][i6][i7];
	a042.a[i1][i2+3]=(i8-2)+a041.a[i1];
	a043.a[i1][i2][i3+3]=(i8-2)+a042.a[i1][i2];
	a044.a[i1][i2][i3][i4+3]=(i8-2)+a043.a[i1][i2][i3];
	a045.a[i1][i2][i3][i4][i5+3]=(i8-2)+a044.a[i1][i2][i3][i4];
	a046.a[i1][i2][i3][i4][i5][i6+3]=
	    (i8-2)+a045.a[i1][i2][i3][i4][i5];
	a047.a[i1][i2][i3][i4][i5][i6][i7+3]=
	    (i8-2)+a046.a[i1][i2][i3][i4][i5][i6];

	a041.a[i1+4]=(i8-2)+a047.a[i1][i2][i3][i4][i5][i6][i7];
	a042.a[i1][i2+4]=(i8-2)+a041.a[i1];
	a043.a[i1][i2][i3+4]=(i8-2)+a042.a[i1][i2];
	a044.a[i1][i2][i3][i4+4]=(i8-2)+a043.a[i1][i2][i3];
	a045.a[i1][i2][i3][i4][i5+4]=(i8-2)+a044.a[i1][i2][i3][i4];
	a046.a[i1][i2][i3][i4][i5][i6+4]=
	    (i8-2)+a045.a[i1][i2][i3][i4][i5];
	a047.a[i1][i2][i3][i4][i5][i6][i7+4]=
	    (i8-2)+a046.a[i1][i2][i3][i4][i5][i6];
	

								}
							}
						}
					}
				}
			}
		}
	}
	n=0;
	printf("    =*=*=a044[0:4][0:4][0:4][0:6]=*=*=\n");
	for(l=0;l<7;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					n++;
					printf("    a044[%d][%d][%d][%d] ==>  %10.5f  |",
					    i,j,k,l,a044.a[i][j][k][l]);
					if((n%2)==0) printf("\n");
				}
			}
		}
	}
	printf("\n");
	n=0;
	printf("    =*=*=a045[0:4][0:4][0:4][0:4][0:6]=*=*=\n");
	for(m=0;m<7;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						n++;
						printf("  a045[%d][%d][%d][%d][%d] ==> %10.5f  |",
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