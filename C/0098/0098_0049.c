#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float g[2];
} a041;
struct st2{
        struct st1 f[2];
} a042;
struct st3{
        struct st2 e[2];
} a043;
struct st4{
        struct st3 d[2];
} a044;
struct st5{
        struct st4 c[2];
} a045;
struct st6{
        struct st5 b[2];
} a046;
struct st7{
        struct st6 a[2];
} a047;
int main()
{
	long int i,j,k,l,m,n,o,p;
	long int i0,i1,i2,i3,i4,i5,i6,i7;
	for(i=0;i<2;i++){
		a041.g[i]=0.03;
	}
	for(j=0;j<2;j++){
		for(i=0;i<2;i++){
			a042.f[i].g[j]=1.0;
		}
	}
	for(k=0;k<2;k++){
		for(j=0;j<2;j++){
			for(i=0;i<2;i++){
				a043.e[i].f[j].g[k]=1.0;
			}
		}
	}
	for(l=0;l<2;l++){
		for(k=0;k<2;k++){
			for(j=0;j<2;j++){
				for(i=0;i<2;i++){
					a044.d[i].e[j].f[k].g[l]=1.0;
				}
			}
		}
	}
	for(m=0;m<2;m++){
		for(l=0;l<2;l++){
			for(k=0;k<2;k++){
				for(j=0;j<2;j++){
					for(i=0;i<2;i++){
						a045.c[i].d[j].e[k].f[l].g[m]=1.0;
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
							a046.b[i].c[j].d[k].e[l].f[m].g[n]=1.0;
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
								a047.a[i].b[j].c[k].d[l].e[m].f[n].g[o]=1.0;
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

	
 	a041.g[i1]+=i0;
	a042.f[i1].g[i2]+=i0;
	a043.e[i1].f[i2].g[i3]+=i0;
	a044.d[i1].e[i2].f[i3].g[i4]+=i0;
	a045.c[i1].d[i2].e[i3].f[i4].g[i5]+=i0;
	a046.b[i1].c[i2].d[i3].e[i4].f[i5].g[i6]+=i0;
	a047.a[i1].b[i2].c[i3].d[i4].e[i5].f[i6].g[i7]+=i0;
	

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
		printf("  %16.7f",a041.g[i]);
	}
	printf("\n");
	p=0;
	printf("*=*=*=*(A042[I1][I2])*=*=*=*\n");
	for(j=0;j<2;j++){
		for(i=0;i<2;i++){
			printf("  %16.7f",a042.f[i].g[j]);
			p++;
			if ((p%4)==0) printf("\n");
		}
	}
	p=0;
	printf("*=*=*=*(A043[I1][I2][I3])*=*=*=*\n");
	for(k=0;k<2;k++){
		for(j=0;j<2;j++){
			for(i=0;i<2;i++){
				printf("  %16.7f",a043.e[i].f[j].g[k]);
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
					printf("  %16.7f",a044.d[i].e[j].f[k].g[l]);
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
						printf("  %16.7f",a045.c[i].d[j].e[k].f[l].g[m]);
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
							printf("  %16.7f",a046.b[i].c[j].d[k].e[l].f[m].g[n]);
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
								printf("  %16.7f",a047.a[i].b[j].c[k].d[l].e[m].f[n].g[o]);
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

