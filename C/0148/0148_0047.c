#include <stdlib.h>
#include <math.h>
#include <stdio.h>
















int main()
{
	float a041[2];
	float a042[2][2];
	float a043[2][2][2];
	float a044[2][2][2][2];
	float a045[2][2][2][2][2];
	float a046[2][2][2][2][2][2];
	float a047[2][2][2][2][2][2][2];
	long int i,j,k,l,m,n,o,p;
	long int i0,i1,i2,i3,i4,i5,i6,i7;
	for(i=0;i<2;i++){
		a041[i]=0.03;
	}
	for(j=0;j<2;j++){
		for(i=0;i<2;i++){
			a042[i][j]=1.0;
		}
	}
	for(k=0;k<2;k++){
		for(j=0;j<2;j++){
			for(i=0;i<2;i++){
				a043[i][j][k]=1.0;
			}
		}
	}
	for(l=0;l<2;l++){
		for(k=0;k<2;k++){
			for(j=0;j<2;j++){
				for(i=0;i<2;i++){
					a044[i][j][k][l]=1.0;
				}
			}
		}
	}
	for(m=0;m<2;m++){
		for(l=0;l<2;l++){
			for(k=0;k<2;k++){
				for(j=0;j<2;j++){
					for(i=0;i<2;i++){
						a045[i][j][k][l][m]=1.0;
					}
				}
			}
		}
	}
	for(n=0;n<2;n++){
		for(m=0;m<2;m++){
			for(l=0;l<2;l++){
				for(k=0;k<2;k++){
					for(j=0;j<2;j++){
						for(i=0;i<2;i++){
							a046[i][j][k][l][m][n]=1.0;
						}
					}
				}
			}
		}
	}
	for(o=0;o<2;o++){
		for(n=0;n<2;n++){
			for(m=0;m<2;m++){
				for(l=0;l<2;l++){
					for(k=0;k<2;k++){
						for(j=0;j<2;j++){
							for(i=0;i<2;i++){
								a047[i][j][k][l][m][n][o]=1.0;
							}
						}
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
								for(i0=0;i0<2;i0++){

	
	a041[i1]+=i0;
	a042[i1][i2]+=i0;
	a043[i1][i2][i3]+=i0;
	a044[i1][i2][i3][i4]+=i0;
	a045[i1][i2][i3][i4][i5]+=i0;
	a046[i1][i2][i3][i4][i5][i6]+=i0;
	a047[i1][i2][i3][i4][i5][i6][i7]+=i0;
	

								}
							}
						}
					}
				}
			}
		}
	}
	printf("*=*=*=*(A041[I1])*=*=*=*\n");
	for(i=0;i<2;i++){
		printf("  %16.7f",a041[i]);
	}
	printf("\n");
	p=0;
	printf("*=*=*=*(A042[I1][I2])*=*=*=*\n");
	for(j=0;j<2;j++){
		for(i=0;i<2;i++){
			printf("  %16.7f",a042[i][j]);
			p++;
			if ((p%4)==0) printf("\n");
		}
	}
	p=0;
	printf("*=*=*=*(A043[I1][I2][I3])*=*=*=*\n");
	for(k=0;k<2;k++){
		for(j=0;j<2;j++){
			for(i=0;i<2;i++){
				printf("  %16.7f",a043[i][j][k]);
				p++;
				if ((p%4)==0) printf("\n");
			}
		}
	}
	p=0;
	printf("*=*=*=*(A044[I1][I2][I3][I4])*=*=*=*\n");
	for(l=0;l<2;l++){
		for(k=0;k<2;k++){
			for(j=0;j<2;j++){
				for(i=0;i<2;i++){
					printf("  %16.7f",a044[i][j][k][l]);
					p++;
					if ((p%4)==0) printf("\n");
				}
			}
		}
	}
	p=0;
	printf("*=*=*=*(A045[I1][I2][I3][I4][I5])*=*=*=*\n");
	for(m=0;m<2;m++){
		for(l=0;l<2;l++){
			for(k=0;k<2;k++){
				for(j=0;j<2;j++){
					for(i=0;i<2;i++){
						printf("  %16.7f",a045[i][j][k][l][m]);
						p++;
						if ((p%4)==0) printf("\n");
					}
				}
			}
		}
	}
	p=0;
	printf("*=*=*=*(A046[I1][I2][I3][I4][I5][I6])*=*=*=*\n");
	for(n=0;n<2;n++){
		for(m=0;m<2;m++){
			for(l=0;l<2;l++){
				for(k=0;k<2;k++){
					for(j=0;j<2;j++){
						for(i=0;i<2;i++){
							printf("  %16.7f",a046[i][j][k][l][m][n]);
							p++;
							if ((p%4)==0) printf("\n");
						}
					}
				}
			}
		}
	}
	p=0;
	printf("*=*=*=*(A047[I1][I2][I3][I4][I5][I6][I7])*=*=*=*\n");
	for(o=0;o<2;o++){
		for(n=0;n<2;n++){
			for(m=0;m<2;m++){
				for(l=0;l<2;l++){
					for(k=0;k<2;k++){
						for(j=0;j<2;j++){
							for(i=0;i<2;i++){
								printf("  %16.7f",a047[i][j][k][l][m][n][o]);
								p++;
								if ((p%4)==0) printf("\n");
							}
						}
					}
				}
			}
		}
	}
	exit (0);
}
