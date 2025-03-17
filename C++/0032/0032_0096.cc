#include <stdio.h>
long long int lli1=0x8000000000000000;
int main()
{
	long long int lli2;

	lli2 = 0x8000000010000000; 

#if (defined(BYTE_ORDER) && (BYTE_ORDER == LITTLE_ENDIAN)) \
 || defined(__aarch64__) || defined(__x86_64__)
	if (*((int *)(&lli2)+1) == 0x80000000)
#else
	if (*((int *)(&lli2)+1) == 0x10000000)
#endif
	  printf("ok\n");
	else
	  printf("ng %x\n",*((int *)(&lli2)+1));
}
