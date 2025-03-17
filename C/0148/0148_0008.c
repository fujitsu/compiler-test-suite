#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10][10],b[10][10];
	long double c[10][10],d[10][10];
	static char ch[13]=
	{
				'A','B','C','D','E','F','G','H','I','J','K','L','\0'		};
	static char ca[13]=
	{
				'G','F','H','G','F','H','F','G','F','H','F','G','\0'		};
	long double y;
	long int i,j,it;
	float x,r,p,q;
	float fdty(),pp;

	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			c[i][j]=0.0;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			d[i][j]=0.0;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			b[i][j]=(i+1)+(j+1);
			a[i][j]=(i+1)-(j+1);
		}
	}
	printf("  *** VCT MSG 220 INPUT/OUTPUT STATEMENT *** \n");
	printf("  *** VCT MSG 320 INPUT/OUTPUT STATEMENT *** \n");
	pp=0;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			if(pp==4){
				printf("\n");
				pp=0;
			}
			pp++;
			x=(i+1)+(j+1);
			printf("  x => %f",x);
		}
	}
	j=6;
	for(i=0;i<10;i++){
		x=a[i][j]+b[i][j];
		it=(i+1)/(i+2);
	}
	printf("\n  *** VCT MSG 221 - INTEGER DIVISION *** \n");
	printf("  *** VCT MSG 321 - INTEGER DIVISION *** \n");
	printf(" x => %f, it => %ld\n",x,it);
	for(i=0;i<10;i++){
		ch[i]=ca[i+1];
	}
	printf("  *** VCT MSG 222 - VECTORIZABLE STATEMENT*** \n");
	printf(" ch[] => %s\n",ch);
	j=9;
	for(i=0;i<10;i++){
		if((j-8)==1) goto LBL_7;
		else if((j-8)==2) goto LBL_8;
		else if((j-8)==3) goto LBL_9;
LBL_9:
		;
		x=4.0;
LBL_8:
		;
		x=1.2;
LBL_7:
		;
		x=b[i][j]+a[i][j];
	}
	printf("  *** VCT MSG 223 - COMPUTED GO TO STATEMENT *** \n");
	printf("  *** VCT MSG 323 - COMPUTED GO TO STATEMENT *** \n");
	printf(" x => %f\n",x);
	j=6;
	y=123.0;
	for(i=0;i<10;i++){
		c[i][j]=y+10.0;
		d[i][j]=c[i][j]+y*1.3;
	}
	printf("  *** VCT MSG 224 - DATA ATTRIBUTE *** \n");
	printf("  *** VCT MSG 324 - DATA ATTRIBUTE *** \n");
	printf(" y => %f\n",(double)y);
	pp=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if(pp==3){
				printf("\n");
				pp=0;
			}
			pp++;
			printf(" c[%ld][%ld] => %f",i,j,(double)c[i][j]);
		}
	}
	printf("\n\n");
	pp=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if(pp==3){
				printf("\n");
				pp=0;
			}
			pp++;
			printf(" d[%ld][%ld] => %f",i,j,(double)d[i][j]);
		}
	}
	j=6;
	x=0.0;
	for(i=0;i<10;i++){
		x=a[i][j]+b[i][j];
	}
	printf("\n  *** VCT MSG 225 - DO PARAMNETER ATTRIBUTE *** \n");
	printf("  *** VCT MSG 325 - DO PARAMNETER ATTRIBUTE *** \n");
	printf(" x => %f\n",x);
	j=0;
	x=0.0;
	for(i=0;i<9;i++){
		a[i][j]=b[i][j];
		j=j+1;
		x=a[i][j]+(i+1)*1.2;
	}
	printf("  *** VCT MSG 226 DEFINITION OF INDUCTION VARIABLE ***\n");
	printf("  *** VCT MSG 326 DEFINITION OF INDUCTION VARIABLE ***\n");
	printf(" x => %f\n",x);
	j=0;
	x=0.0;
	p=1.0;
	q=2.5;
	r=4.5;
	for(i=0;i<9;i++){
		a[i][j]=b[i][j]+fdty(p,q,r,i);
		x=a[i][j]+(i+1)*1.2;
	}
	printf("  *** VCT MSG 228 EXTERNAL FUNCTION ***\n");
	printf("  *** VCT MSG 328 EXTERNAL FUNCTION ***\n");
	printf(" x => %f\n",x);
	exit (0);
}
float fdty(s,t,u,l)
float s,t,u;
long int l;
{
	float zz;
	zz=(-s+t)/2.0*u+(l+1);
	return(zz);
}
