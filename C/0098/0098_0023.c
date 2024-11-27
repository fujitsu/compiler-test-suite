#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} a,b,c,d,e,f;
int main(){
	long int i;
	float s,t;
        for(i=0;i<10;i++){
                a.x[i]=1.0;
                b.x[i]=2.0;
                c.x[i]=3.0;
                d.x[i]=4.0;
                e.x[i]=5.0;
                f.x[i]=6.0;
	}
	s=0;
	i=1;
LBL_10:
	;
	a.x[i-1]=b.x[i-1]+c.x[i-1];
	i++;
	if (i <  10) goto LBL_10;
	t=a.x[0];
	i=1;
	while(i<=10){
		d.x[i-1]=b.x[i-1]/t;
		i++;
	}
	i=1;
	do{
		f.x[i-1]=b.x[i-1]-t;
		i++;
	}while(i!=11);
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f b[%ld] => %f c[%ld] => %f\n",
		    i,a.x[i],i,b.x[i],i,c.x[i]);
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf("d[%ld] => %f e[%ld] => %f f[%ld] => %f\n",
		    i,d.x[i],i,e.x[i],i,f.x[i]);
	}
	printf(" t => %f\n",t);
	exit (0);
}

