#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float g[5];
} a041;
struct st2{
        struct st1 f[5];
} a042;
struct st3{
        struct st2 e[5];
} a043;
struct st4{
        struct st3 d[5];
} a044;
struct st5{
        struct st4 c[5];
} a045;
struct st6{
        struct st5 b[5];
} a046;
struct st7{
        struct st6 a[5];
} a047;
int main()
{
	long int i1,i2,i3,i4,i5,i6,i7,i8;
	long int i,j,k,l,m,n,o;
	for(i=0;i<5;i++){
		a041.g[i]=0.01;
	}
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			a042.f[i].g[j]=1.0;
		}
	}
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				a043.e[i].f[j].g[k]=1.0;
			}
		}
	}
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					a044.d[i].e[j].f[k].g[l]=1.0;
				}
			}
		}
	}
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						a045.c[i].d[j].e[k].f[l].g[m]=1.0;
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
							a046.b[i].c[j].d[k].e[l].f[m].g[n]=1.0;
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
								a047.a[i].b[j].c[k].d[l].e[m].f[n].g[o]=1.0;
							}
						}
					}
				}
			}
		}
	}
	for(i1=0;i1<2;i1+=2){
		for(i2=i1;i2<3;i2+=2){
			for(i3=i2;i3<3;i3+=2){
				for(i4=i3;i4<3;i4+=2){
					for(i5=i4;i5<3;i5+=2){
						for(i6=i5;i6<3;i6+=2){
							for(i7=i6;i7<3;i7+=2){
								for(i8=i7;i8<3;i8+=2){

	
	a041.g[i1]=a041.g[i1]+i8+1;
	a042.f[i1].g[i2]=a041.g[i1]+i8+1;
	a043.e[i1].f[i2].g[i3]=a042.f[i1].g[i2]+i8+1;
	a044.d[i1].e[i2].f[i3].g[i4]=a043.e[i1].f[i2].g[i3]+i8+1;
	a045.c[i1].d[i2].e[i3].f[i4].g[i5]=a044.d[i1].e[i2].f[i3].g[i4]+i8+1;
	a046.b[i1].c[i2].d[i3].e[i4].f[i5].g[i6]=a045.c[i1].d[i2].e[i3].f[i4].g[i5]+i8+1;
	a047.a[i1].b[i2].c[i3].d[i4].e[i5].f[i6].g[i7]=
	    a046.b[i1].c[i2].d[i3].e[i4].f[i5].g[i6]+i8+1;
	

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
					    i,j,k,l,a044.d[i].e[j].f[k].g[l]);
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
						    i,j,k,l,m,a045.c[i].d[j].e[k].f[l].g[m]);
						if((n%2)==0) printf("\n");
					}
				}
			}
		}
	}
	printf("\n");
	exit (0);
}

