#include <stdio.h>

int main()
 {
     signed long long int ia8;
   unsigned long long int ua8;

   ia8=0x0000000000000110LL;
	
   ua8 = ((unsigned long long)(ia8+1))+1;
	if(ua8 == 0x0000000000000112ULL)
		printf("(01) ok\n");
	else	printf("(01) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ua8=0x0000000000000110ULL;

   ia8 = ((signed long long)(ua8+1))+1;
	if(ia8 == 0x0000000000000112LL)
		printf("(02) ok\n");
	else	printf("(02) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

 }
