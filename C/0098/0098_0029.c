#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float a,b,c,d,e,f;
} t[10];
int main(){
	float s;
	long int i;
	s=0;
        for(i=0;i<10;i++){
	        t[i].a=1.0;
	        t[i].b=2.0;
	        t[i].c=3.0;
	        t[i].d=4.0;
	        t[i].e=5.0;
	        t[i].f=6.0;
        }
	for(i=0;i<10;i++){
		t[i].a=t[i].b+t[i].c;
		goto LBL_11;
LBL_13:
		;
		s+=t[i].f;
		goto LBL_10;
LBL_12:
		;
		t[i].e=t[i].f+i+1;
		goto LBL_13;
LBL_11:
		;
		t[i].d=0.0;
		goto LBL_12;
LBL_10:
		;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f   b[%ld] => %f   c[%ld] %f\n",
		    i,t[i].a,i,t[i].b,i,t[i].c);
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f   e[%ld] => %f   f[%ld] %f\n",
		    i,t[i].d,i,t[i].e,i,t[i].f);
	}
	printf(" s => %f\n",s);
	exit (0);
}

