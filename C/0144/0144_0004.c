#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void f(int k[],int i[])
{
    int p;

    if(*k) {
	for(p=0;p<10;p++){
	    *(k + p)= *(k +p) + 99;
	}
    }
#pragma omp parallel for
    for(p=0;p<10;p++){
        *(i + p)= *(k +p);
    }

    for(p=0;p<10;p++){
	if(*(k + p) == *(i + p))
	    printf("OK\n");
	else
	    printf("NG i[%d]=%d\n",p,*(i + p));
    }
}
int main()
{
    int k[10]={1,2,3,4,5,6,7,8,9,10};
    int y[10];
    f(k,y);
}

