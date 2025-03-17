#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void f(int k[],int i[])
{

    if(*i) {
        *k += 1;
	printf("k=%d\n",*k);
    }
#pragma omp parallel
    {
#pragma omp single
	{
        *i += 1;
        *k += 1;
    }
    }

    if(*i==2 && *k==3){
	printf("OK\n");
    }
    else {
	printf("NG\n");
	printf("i=%d\n",*i);
	printf("k=%d\n",*k);
    }
}
int main()
{
    int k[10]={1,2,3,4,5,6,7,8,9,10};
    int y[10]={1,2,3,4,5,6,7,8,9,10};
    f(k,y);
}

