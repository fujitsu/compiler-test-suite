#include <stdio.h>

int main()
 {
     signed long long int a,b,c;
   unsigned long long int d,e,f;

   	a=0x0000000000000010LL;
	b=0x0000000000000001LL;

	c = a - b;
	    if(c == 0x000000000000000fLL)
 		 printf("(01) ok\n");
	    else printf("(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000000000001LL;
	b=0x0000000000000002LL;

	c = a - b;
	    if(c == 0xffffffffffffffffLL)
		 printf("(02) ok\n");
	    else printf("(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000100000000LL;
	
	c = a - 0x00000000ffffffffLL;
	    if(c == 0x0000000000000001LL)
		 printf("(03) ok\n");
	    else printf("(03) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000000000000LL;

	c = a - 0x0000000000000002LL;
 	    if(c == 0xfffffffffffffffeLL)
		 printf("(04) ok\n");
	    else printf("(04) ng %s %s\n",*(int *)&c,*(((int *)&c)+1));

	d=0x1111000011110000ULL;
	e=0x0000111100001111ULL;

	f = d - e;
	    if(f == 0x1110eeef1110eeefULL)
		 printf("(05) ok\n");
	    else printf("(05) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x0000010000000000ULL;
	e=0x0000000f00000000ULL;
	   
	f = d - e;
	    if(f == 0x000000f100000000ULL)
		 printf("(06) ok\n");
	    else printf("(06) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x00001111ffff0000ULL;

	f = d - 0x0000000000000000ULL;
	    if(f ==0x00001111ffff0000)
		 printf("(07) ok\n");
	    else printf("(07) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x1111111111111111ULL;
	
	f = d - 0x00000000ffffffffULL;
	    if(f == 0x1111111011111112ULL)
		 printf("(08) ok\n");
	    else printf("(08) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

 	a = -1LL;
	b = -a;
	    if(b == 1LL)
		 printf("(09) ok\n");
	    else printf("(09) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));
 
 }

