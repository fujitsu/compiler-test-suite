#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float g[5];
} a041;
struct st2{
        float f[5][5];
} a042;
struct st3{
        float e[5][5][5];
} a043;
struct st4{
        float d[5][5][5][5];
} a044;
struct st5{
        float c[5][5][5][5][5];
} a045;
struct st6{
        float b[5][5][5][5][5][5];
} a046;
struct st7{
        float a[5][5][5][5][5][5][5];
} a047;
int main()
{
	long int i1,i2,i3,i4,i5,i6,i7,i8,i9;
	long int i,j,k,l,m,n,o,p;
	for(i=0;i<5;i++){
		a041.g[i]=10.0;
	}
	for(i1=0;i1<5;i1++){
		for(i2=0;i2<5;i2++){
			for(i3=0;i3<5;i3++){
				for(i4=0;i4<5;i4++){
					for(i5=0;i5<5;i5++){
						for(i6=0;i6<5;i6++){
							for(i7=0;i7<5;i7++){
								for(i8=0;i8<5;i8++){

	
	i9=(i1-2)*(i2-2)+(i3-2)*(i4-2)+(i5-2)*(i6-2)
	    +(i7-2)*(i8-2)+1;
	a041.g[i1]=a041.g[i1]+i9;
	a042.f[i1][i2]=a041.g[i1]+i9;
	a043.e[i1][i2][i3]=a042.f[i1][i2]+i9;
	a044.d[i1][i2][i3][i4]=a043.e[i1][i2][i3]+i9;
	a045.c[i1][i2][i3][i4][i5]=a044.d[i1][i2][i3][i4]+i9;
	a046.b[i1][i2][i3][i4][i5][i6]=a045.c[i1][i2][i3][i4][i5]+i9;
	a047.a[i1][i2][i3][i4][i5][i6][i7]=
	    a046.b[i1][i2][i3][i4][i5][i6]+i9;
	

								}
							}
						}
					}
				}
			}
		}
	}
	for(i1=0;i1<5;i1+=3){
		for(i2=0;i2<5;i2+=3){
			for(i3=0;i3<5;i3+=3){
				for(i4=0;i4<5;i4+=3){
					for(i5=0;i5<5;i5+=3){
						for(i6=0;i6<5;i6+=3){
							for(i7=0;i7<5;i7+=3){
								for(i8=0;i8<5;i8+=3){

	
	a041.g[i1]=a041.g[i1]+i8-2;
	a042.f[i1][i2]=a041.g[i1]+i8-2;
	a043.e[i1][i2][i3]=a042.f[i1][i2]+i8-2;
	a044.d[i1][i2][i3][i4]=a043.e[i1][i2][i3]+i8-2;
	a045.c[i1][i2][i3][i4][i5]=a044.d[i1][i2][i3][i4]+i8-2;
	a046.b[i1][i2][i3][i4][i5][i6]=a045.c[i1][i2][i3][i4][i5]+i8-2;
	a047.a[i1][i2][i3][i4][i5][i6][i7]=
	    a046.b[i1][i2][i3][i4][i5][i6]+i8-2;
	

								}
							}
						}
					}
				}
			}
		}
	}
	p=0;
	printf("*=*=*=*(A041[I1])*=*=*=*\n");
	for(i=0;i<5;i++){
		printf(" %16.7f ",a041.g[i]);
		p++;
		if((p%4)==0) printf("\n");
	}
	p=0;
	printf("\n");
	printf("*=*=*=*(A042[I1][I2])*=*=*=*\n");
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			printf(" %16.7f ",a042.f[i][j]);
			p++;
			if((p%4)==0) printf("\n");
		}
	}
	printf("\n");
	p=0;
	printf("*=*=*=*(A043[I1][I2][I3])*=*=*=*\n");
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				printf(" %16.7f ",a043.e[i][j][k]);
				p++;
				if((p%4)==0) printf("\n");
			}
		}
	}
	printf("\n");
	p=0;
	printf("*=*=*=*(A044[I1][I2][I3][I4])*=*=*=*\n");
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					printf(" %16.7f ",a044.d[i][j][k][l]);
					p++;
					if((p%4)==0) printf("\n");
				}
			}
		}
	}
	printf("\n");
	p=0;
	printf("*=*=*=*(A045[I1][I2][I3][I4][I5])*=*=*=*\n");
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						printf(" %16.7f ",a045.c[i][j][k][l][m]);
						p++;
						if((p%4)==0) printf("\n");
					}
				}
			}
		}
	}
	printf("\n");
	p=0;
	printf("*=*=*=*(A046[I1][I2][I3][I4][I5][I6])*=*=*=*\n");
	for(n=0;n<5;n++){
		for(m=0;m<5;m++){
			for(l=0;l<5;l++){
				for(k=0;k<5;k++){
					for(j=0;j<5;j++){
						for(i=0;i<5;i++){
							printf(" %16.7f ",a046.b[i][j][k][l][m][n]);
							p++;
							if((p%4)==0) printf("\n");
						}
					}
				}
			}
		}
	}
	printf("\n");
	p=0;
	printf("*=*=*=*(A047[I1][I2][I3][I4][I5][I6][I7])*=*=*=*\n");
	for(o=0;o<5;o++){
		for(n=0;n<5;n++){
			for(m=0;m<5;m++){
				for(l=0;l<5;l++){
					for(k=0;k<5;k++){
						for(j=0;j<5;j++){
							for(i=0;i<5;i++){
								printf(" %16.7f ",a047.a[i][j][k][l][m][n][o]);
								p++;
								if((p%4)==0) printf("\n");
							}
						}
					}
				}
			}
		}
	}
	printf("\n");
	exit (0);
}

