#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
         float x[10];
} a1,b1,c1,d1,e1,f1;
struct st2{
         float x[20];
} a2,b2,c2,d2,e2,f2,g2,
  a3,b3,c3,d3,e3,f3,g3;
int main(){
	long int i,p;
	for(i=0;i<10;i++){
		b1.x[i]=1.0;
		c1.x[i]=2.0;
		d1.x[i]=3.0;
		e1.x[i]=4.0;
		f1.x[i]=5.0;
	}
	for(i=0;i<20;i++){
		b2.x[i]=1.0;
		c2.x[i]=2.0;
		d2.x[i]=3.0;
		e2.x[i]=4.0;
		f2.x[i]=5.0;
		b3.x[i]=1.0;
		c3.x[i]=2.0;
		d3.x[i]=3.0;
		e3.x[i]=4.0;
		f3.x[i]=5.0;
	}
	printf("  *****  ***** DEBUG FUNCTION\n");
	for(i=0;i<10;i++){
		b1.x[i]=d1.x[i];
		a1.x[i]=b1.x[i]+c1.x[i];
		e1.x[i]=f1.x[i];
	}
	p=0;
	printf(" ### A1 ###\n");
	for(i=0;i<10;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  a1[%ld] => %f",i,a1.x[i]);
		p++;
	}
	p=0;
	printf("\n ### B1 ###\n");
	for(i=0;i<10;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  b1[%ld] => %f",i,b1.x[i]);
		p++;
	}
	p=0;
	printf("\n ### C1 ###\n");
	for(i=0;i<10;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  e1[%ld] => %f",i,e1.x[i]);
		p++;
	}
	for(i=0;i<20;i++){
		b2.x[i]=d2.x[i];
		a2.x[i]=b2.x[i]+c2.x[i];
		g2.x[i]=e2.x[i];
		e2.x[i]=f2.x[i];
	}
	p=0;
	printf("\n ### A2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  a2[%ld] => %f",i,a2.x[i]);
		p++;
	}
	p=0;
	printf("\n ### B2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  b2[%ld] => %f",i,b2.x[i]);
		p++;
	}
	p=0;
	printf("\n ### G2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  g2[%ld] => %f",i,g2.x[i]);
		p++;
	}
	p=0;
	printf("\n ### E2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  e2[%ld] => %f",i,e2.x[i]);
		p++;
	}
	for(i=0;i<20;i++){
		b3.x[i]=d3.x[i];
		a3.x[i]=b3.x[i]+c3.x[i];
		g3.x[i]=e3.x[i];
		e3.x[i]=f3.x[i];
	}
	p=0;
	printf("\n ### A3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  a3[%ld] => %f",i,a3.x[i]);
		p++;
	}
	p=0;
	printf("\n ### B3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  b3[%ld] => %f",i,b3.x[i]);
		p++;
	}
	p=0;
	printf("\n ### G3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  g3[%ld] => %f",i,g3.x[i]);
		p++;
	}
	p=0;
	printf("\n ### E3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  e3[%ld] => %f",i,e3.x[i]);
		p++;
	}
	printf("\n");
	exit (0);
}
