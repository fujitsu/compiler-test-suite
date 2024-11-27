
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>


size_t getN(int n)
{
	unsigned char buf[n];
	return sizeof(buf);
}

int main()
{
	size_t sz;
	size_t sz2;
	size_t sz3;
	sz = getN(1);		
	sz2 = getN(256);	
	sz3 = getN(1024);	

	printf("getN(1)=:  %d\n",sz);
	printf("getN(256)=:  %d\n",sz2);
	printf("getN(1024)=:  %d\n",sz3);
	return 0;
}
