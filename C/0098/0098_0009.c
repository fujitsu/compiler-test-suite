#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct t1{
	long int x[10];
} ll;
struct t2{
  float xx[10][10];
} a,b;
struct st3{
        float x[10];
} c,d,e,z;
int main(){
	long int i,j,i2,i1,n,pp;
	float x,y;
	for(i=0;i<10;i++){
		c.x[i]=(i+1)*0.12+(i+1)*1.2;
		ll.x[i]=i+1;
		d.x[i]=(i+1)*0.11+(i+1)*2.1;
		e.x[i]=1.0;
		for(j=0;j<10;j++){
			b.xx[i][j]=(i+1)+(j+1);
			a.xx[i][j]=(i+1)-(j+1);
		}
	}
	j=6;
	i=0;
	i2=c.x[2];
	i1=c.x[0];
	for(i=0;i<5;i++){
		a.xx[i+i2][j]=a.xx[i+i1][j]+d.x[i];
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
			printf("  x => %f,a[%ld][%ld] => %f",x,i,j,a.xx[i][j]);
		}
	}
	n=1;
	for(i=0;i<7;i++){
		c.x[i]=a.xx[i][1];
		c.x[n]=a.xx[i][2];
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
		printf(" c[%ld] => %f",i,c.x[i]);
	}
	j=9;
	pp=0;
	for(i=0;i<10;i++){
		e.x[i]=a.xx[i][3];
	}
	printf("\n*** VCT MSG 235 - INCREMENT 0 *** \n");
	for(i=0;i<10;i++){
		if(pp==2){
			printf("\n");
			pp=0;
		}
		pp++;
		printf(" e[%ld] => %f",i,e.x[i]);
	}
	j=6;
	for(i=0;i<10;i++){
		if (i != 2){
			x=(i+1)*1.3;
		}
		y=x*d.x[i]+b.xx[i][2];
	}
	printf("\n*** VCT MSG 236 - DEFINITION OF SIMPLE VARIABLE ***\n");
	printf(" y => %f\n",y);
	j=6;
	n=0;
	for(i=0;i<10;i++){
		x=c.x[n];
		c.x[n]=a.xx[i][j]+d.x[i];
		n=ll.x[i];
		z.x[i]=x+b.xx[i][j];
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
		printf(" x => %f, z[%ld] => %f",x,i,z.x[i]);
	}
	j=0;
	for(i=0;i<9;i++){
		a.xx[ll.x[i]][j]=b.xx[ll.x[i]][j];
		b.xx[ll.x[i]][j]=d.x[i]+x;
	}
	printf("\n*** VCT MSG 237 - NOREC ***\n");
	printf("*** VCT MSG 337 - NOREC ***\n");
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf(" a[%ld][%ld] => %f",i,j,a.xx[i][j]);
			printf("    b[%ld][%ld] => %f\n",i,j,b.xx[i][j]);
		}
	}
	printf("\n*** VCT MSG 241 - DO LOOP ITERATION COUNT***\n");
	j=0;
	for(i=0;i<9;i++){
		x=a.xx[i][j]+(i+1)*1.2;
		a.xx[i+1][j]=b.xx[i][j]+d.x[i]+x;
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
			printf("  x => %10.4f,a[%ld][%ld] => %f",x,i,j,a.xx[i][j]);
		}
	}
	printf("\n");
	exit (0);
}
