#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void par002s(int *k,int *i)
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
    int k=1;
    int y=1;
    par002s(&k,&y);
}

