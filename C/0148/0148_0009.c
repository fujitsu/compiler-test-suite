#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	long int ll[10];
	float a[10][10],b[10][10],
	c[10],d[10],e[10],z[10];
	long int i,j,i2,i1,n,pp;
	float x,y;
	for(i=0;i<10;i++){
		c[i]=(i+1)*0.12+(i+1)*1.2;
		ll[i]=i+1;
		d[i]=(i+1)*0.11+(i+1)*2.1;
		e[i]=1.0;
		for(j=0;j<10;j++){
			b[i][j]=(i+1)+(j+1);
			a[i][j]=(i+1)-(j+1);
		}
	}
	j=6;
	i=0;
	i2=c[2];
	i1=c[0];
	for(i=0;i<5;i++){
		a[i+i2][j]=a[i+i1][j]+d[i];
	}
	printf("*** VCT MSG 233 - RELATION BETWEEN @1 AND @2***\n");
	printf("*** VCT MSG 333 - RELATION BETWEEN @1 AND @2***\n");
	pp=0;
	x=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if(pp==2){
				printf("\n");
				pp=0;
			}
			pp++;
			printf("  x => %f,a[%ld][%ld] => %f",x,i,j,a[i][j]);
		}
	}
	n=1;
	for(i=0;i<7;i++){
		c[i]=a[i][1];
		c[n]=a[i][2];
		n=n+1;
	}
	printf("\n*** VCT MSG 342 - INDUCTION VARIABLE *** \n");
	pp=0;
	for(i=0;i<10;i++){
		if(pp==2){
			printf("\n");
			pp=0;
		}
		pp++;
		printf(" c[%ld] => %f",i,c[i]);
	}
	j=9;
	pp=0;
	for(i=0;i<10;i++){
		e[i]=a[i][3];
	}
	printf("\n*** VCT MSG 235 - INCREMENT 0 *** \n");
	for(i=0;i<10;i++){
		if(pp==2){
			printf("\n");
			pp=0;
		}
		pp++;
		printf(" e[%ld] => %f",i,e[i]);
	}
	j=6;
	for(i=0;i<10;i++){
		if (i != 2){
			x=(i+1)*1.3;
		}
		y=x*d[i]+b[i][2];
	}
	printf("\n*** VCT MSG 236 - DEFINITION OF SIMPLE VARIABLE ***\n");
	printf(" y => %f\n",y);
	j=6;
	n=0;
	for(i=0;i<10;i++){
		x=c[n];
		c[n]=a[i][j]+d[i];
		n=ll[i];
		z[i]=x+b[i][j];
	}
	printf("\n*** VCT MSG 237  VARIABLE IN ");
	printf("SUBSCRIPT EXPRESSION ***\n");
	printf("*** VCT MSG 337  VARIABLE IN SUBSCRIPT EXPRESSION ***\n");
	pp=0;
	for(i=0;i<10;i++){
		if(pp==2){
			printf("\n");
			pp=0;
		}
		pp++;
		printf(" x => %f, z[%ld] => %f",x,i,z[i]);
	}
	j=0;
	for(i=0;i<9;i++){
		a[ll[i]][j]=b[ll[i]][j];
		b[ll[i]][j]=d[i]+x;
	}
	printf("\n*** VCT MSG 237 - NOREC ***\n");
	printf("*** VCT MSG 337 - NOREC ***\n");
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf(" a[%ld][%ld] => %f",i,j,a[i][j]);
			printf("    b[%ld][%ld] => %f\n",i,j,b[i][j]);
		}
	}
	printf("\n*** VCT MSG 241 - DO LOOP ITERATION COUNT***\n");
	j=0;
	for(i=0;i<9;i++){
		x=a[i][j]+(i+1)*1.2;
		a[i+1][j]=b[i][j]+d[i]+x;
	}
	printf("\n*** VCT MSG 242 SCC ***\n");
	printf("*** VCT MSG 342 SCC ***\n");
	pp=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if(pp==2){
				printf("\n");
				pp=0;
			}
			pp++;
			printf("  x => %f,a[%ld][%ld] => %f",x,i,j,a[i][j]);
		}
	}
	printf("\n");
	exit (0);
}
