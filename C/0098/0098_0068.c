#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[3][3][4][3][3];
} a,b;
struct st2{
        double x[3][3][4][3][3];
} d;  
int main()
{
	long int n=4;
	long int i3,i1,i2,i4,i5;
	long int i,j,k,l,m,p;
	float t,s;
        double d1;
	for(m=0;m<3;m++){
		for(l=0;l<3;l++){
			for(k=0;k<4;k++){
				for(j=0;j<3;j++){
					for(i=0;i<3;i++){
						a.x[i][j][k][l][m]=0.0;
						b.x[i][j][k][l][m]=3.0;
						d.x[i][j][k][l][m]=5.0;
					}
				}
			}
		}
	}
	for(i1=0;i1<3;i1++){
		for(i2=0;i2<3;i2++){
			for(i3=0;i3<n;i3++){
				t=(i3+1)*2;
				for(i4=0;i4<3;i4++){
					t=(i1+1)*3+(i2+1)+(i3+1)+(i4+1);
					for(i5=0;i5<3;i5++){
						a.x[i1][i2][i3][i4][i5]=t;
					}
					s=t-(i4+1);
				}
			}
		}
	}
	printf("  ## S ##\n");
	printf(" %g \n",s);
	printf("  ## T ##\n");
	printf(" %g \n",t);
	printf("  ## A ##\n");
	p=0;
	for(m=0;m<3;m++){
		for(l=0;l<3;l++){
			for(k=0;k<4;k++){
				for(j=0;j<3;j++){
					for(i=0;i<3;i++){
						printf(" %g ",a.x[i][j][k][l][m]);
						p++;
						if((p%3)==0) printf("\n");
					}
				}
			}
		}
	}
	for(i1=0;i1<3;i1++){
		for(i2=0;i2<3;i2++){
			s=a.x[i1][1][i2][1][1]*2;
			for(i3=0;i3<4;i3++){
				for(i4=0;i4<3;i4++){
					for(i5=0;i5<2;i5++){
						b.x[i1][i2][i3][i4][i5]=s;
					}
				}
			}
		}
	}
	printf("  ## B ##\n");
	p=0;
	for(m=0;m<3;m++){
		for(l=0;l<3;l++){
			for(k=0;k<4;k++){
				for(j=0;j<3;j++){
					for(i=0;i<3;i++){
						printf(" %g ",b.x[i][j][k][l][m]);
						p++;
						if((p%3)==0) printf("\n");
					}
				}
			}
		}
	}
	for(i1=0;i1<3;i1++){
		d1=(i1+1)/2.0;
		for(i2=0;i2<3;i2++){
			for(i3=0;i3<4;i3++){
				for(i4=0;i4<3;i4++){
					for(i5=0;i5<3;i5++){
						d.x[i1][i2][i3][i4][i5]=d1;
						d1=d1/(i5+1);
					}
				}
			}
		}
	}
	printf("  ## D1##\n");
	printf(" %g \n",d1);
	printf("  ## D ##\n");
	for(m=0;m<3;m++){
		for(l=0;l<3;l++){
			for(k=0;k<4;k++){
				for(j=0;j<3;j++){
					for(i=0;i<3;i++){
						printf(" %g \n",d.x[i][j][k][l][m]);
					}
				}
			}
		}
	}
	for(i1=0;i1<3;i1++){
		for(i2=0;i2<3;i2++){
			for(i5=0;i5<3;i5++){
				for(i3=0;i3<4;i3++){
					for(i4=0;i4<3;i4++){
						d1=d.x[i1][i2][i3][i4][i5];
					}
				}
			}
		}
	}
	printf("  ## D1##\n");
	printf(" %g \n",d1);
	exit (0);
}

