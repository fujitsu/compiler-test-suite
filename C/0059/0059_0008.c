
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>


size_t getN(int n, int m)
{
	typedef char buf[n][m];
	return sizeof(buf);
}

int main()
{
	size_t sz;
	int    i,ii;
	for (i=1; i <= 10; i++)
	{
		for (ii=1; ii <= 10; ii++)
		{
			sz = getN(i*2,ii*4);
			printf("getN(%d,%d)=:  %d\n",i,ii,sz);
		}
	}
	return 0;
}

