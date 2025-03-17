#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a1[10],b1[10],c1[10],d1[10],e1[10],f1[10],
	a2[20],b2[20],c2[20],d2[20],e2[20],f2[20],g2[20],
	a3[20],b3[20],c3[20],d3[20],e3[20],f3[20],g3[20];
	long int i,p;
	for(i=0;i<10;i++){
		b1[i]=1.0;
		c1[i]=2.0;
		d1[i]=3.0;
		e1[i]=4.0;
		f1[i]=5.0;
	}
	for(i=0;i<20;i++){
		b2[i]=1.0;
		c2[i]=2.0;
		d2[i]=3.0;
		e2[i]=4.0;
		f2[i]=5.0;
		b3[i]=1.0;
		c3[i]=2.0;
		d3[i]=3.0;
		e3[i]=4.0;
		f3[i]=5.0;
	}
	printf("  ***** 0007 ***** DEBUG FUNCTION\n");
	for(i=0;i<10;i++){
		b1[i]=d1[i];
		a1[i]=b1[i]+c1[i];
		e1[i]=f1[i];
	}
	p=0;
	printf(" ### A1 ###\n");
	for(i=0;i<10;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  a1[%ld] => %f",i,a1[i]);
		p++;
	}
	p=0;
	printf("\n ### B1 ###\n");
	for(i=0;i<10;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  b1[%ld] => %f",i,b1[i]);
		p++;
	}
	p=0;
	printf("\n ### C1 ###\n");
	for(i=0;i<10;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  e1[%ld] => %f",i,e1[i]);
		p++;
	}
	for(i=0;i<20;i++){
		b2[i]=d2[i];
		a2[i]=b2[i]+c2[i];
		g2[i]=e2[i];
		e2[i]=f2[i];
	}
	p=0;
	printf("\n ### A2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  a2[%ld] => %f",i,a2[i]);
		p++;
	}
	p=0;
	printf("\n ### B2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  b2[%ld] => %f",i,b2[i]);
		p++;
	}
	p=0;
	printf("\n ### G2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  g2[%ld] => %f",i,g2[i]);
		p++;
	}
	p=0;
	printf("\n ### E2 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  e2[%ld] => %f",i,e2[i]);
		p++;
	}
	for(i=0;i<20;i++){
		b3[i]=d3[i];
		a3[i]=b3[i]+c3[i];
		g3[i]=e3[i];
		e3[i]=f3[i];
	}
	p=0;
	printf("\n ### A3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  a3[%ld] => %f",i,a3[i]);
		p++;
	}
	p=0;
	printf("\n ### B3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  b3[%ld] => %f",i,b3[i]);
		p++;
	}
	p=0;
	printf("\n ### G3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  g3[%ld] => %f",i,g3[i]);
		p++;
	}
	p=0;
	printf("\n ### E3 ###\n");
	for(i=0;i<20;i++){
		if(p==3){
			printf("\n");
			p=0;
		}
		printf("  e3[%ld] => %f",i,e3[i]);
		p++;
	}
	printf("\n");
	exit (0);
}
