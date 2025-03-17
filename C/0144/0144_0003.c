#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

struct tag { int a,b ; };

void f(struct tag k,struct tag i)
{

    if(k.a) {
        k.a += 1;
	printf("k=%d\n",k.a);
    }
#pragma omp parallel
    {
#pragma omp single
	{
        i.a += 1;
        k.a += 1;
    }
    }

    if(i.a==2 && k.a==3){
	printf("OK\n");
    }
    else {
	printf("NG\n");
	printf("i=%d\n",i.a);
	printf("k=%d\n",k.a);
    }
}
int main()
{
    struct tag k={1,2};
    struct tag y={1,2};
    f(k,y);
}

