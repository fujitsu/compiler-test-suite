#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float a[10],b[10],c[10],d[10],e[10],f[10];
} t;
int main(){
	float s;
	long int i;
	s=0;
        for(i=0;i<10;i++){
	        t.a[i]=1.0;
	        t.b[i]=2.0;
	        t.c[i]=3.0;
	        t.d[i]=4.0;
	        t.e[i]=5.0;
	        t.f[i]=6.0;
        }
	for(i=0;i<10;i++){
		t.a[i]=t.b[i]+t.c[i];
		goto LBL_11;
LBL_11:
		;
		t.d[i]=0.0;
		goto LBL_12;
LBL_12:
		;
		t.e[i]=t.f[i]+i+1;
		goto LBL_13;
LBL_13:
		;
		s+=t.f[i];
		goto LBL_10;
LBL_10:
		;
	}
	printf("  *****  (A) *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f   b[%ld] => %f   c[%ld] => %f\n",
		    i,t.a[i],i,t.b[i],i,t.c[i]);
	}
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f   e[%ld] => %f   f[%ld] => %f\n",
		    i,t.d[i],i,t.e[i],i,t.f[i]);
	}
	printf(" s => %f\n",s);
	for(i=0;i<10;i++){
		t.a[i]=t.b[i]+t.c[i];
		t.d[i]=0.0;
		t.e[i]=t.f[i]+i+1;
		s+=t.f[i];
	}
	printf("  *****  (B) *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f   b[%ld] => %f   c[%ld] => %f\n",
		    i,t.a[i],i,t.b[i],i,t.c[i]);
	}
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f   e[%ld] => %f   f[%ld] => %f\n",
		    i,t.d[i],i,t.e[i],i,t.f[i]);
	}
	printf(" s => %f\n",s);
	for(i=0;i<10;i++){
		t.a[i]=t.b[i]+t.c[i];
		t.d[i]=0.0;
		t.e[i]=t.f[i]+i+1;
		s+=t.f[i];
	}
	printf("  *****  (C) *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f   b[%ld] => %f   c[%ld] => %f\n",
		    i,t.a[i],i,t.b[i],i,t.c[i]);
	}
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f   e[%ld] => %f   f[%ld] => %f\n",
		    i,t.d[i],i,t.e[i],i,t.f[i]);
	}
	printf(" s => %f\n",s);
	exit (0);
}

