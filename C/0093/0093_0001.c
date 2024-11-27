#include <stdio.h>

int main()
 {
     signed long long int a,b,c;
   unsigned long long int d,e,f;

   	a=0x0000000000000001LL;
	b=0x0000000000001000LL;

	c = a + b;
	    if(c == 0x0000000000001001LL)
 		 printf("(01) ok\n");
	    else printf("(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x00000000ffffffffLL;
	b=0x0000000000000001LL;

	c = a + b;
	    if(c == 0x0000000100000000LL)
		 printf("(02) ok\n");
	    else printf("(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000000000000LL;
	
	c = a + 0xffffffffffffffffLL;
	    if(c == 0xffffffffffffffffLL)
		 printf("(03) ok\n");
	    else printf("(03) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0xffffffffffffffffLL;

	c = a + 0x0000000000000002LL;
 	    if(c == 0x0000000000000001LL)
		 printf("(04) ok\n");
	    else printf("(04) ng %s %s\n",*(int *)&c,*(((int *)&c)+1));
 
	d=0x0000111100001111ULL;
	e=0x1111000011110000ULL;

	f = d + e;
	    if(f == 0x1111111111111111ULL)
		 printf("(05) ok\n");
	    else printf("(05) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x0000000010000000ULL;
	e=0x00000000f0000000ULL;
	   
	f = d + e;
	    if(f == 0x0000000100000000ULL)
		 printf("(06) ok\n");
	    else printf("(06) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x00001111ffff0000ULL;

	f = d + 0x0000000000000000ULL;
	    if(f ==0x00001111ffff0000)
		 printf("(07) ok\n");
	    else printf("(07) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x00000000ffff000fULL;
	
	f = d + 0x1111111111111111ULL;
	    if(f == 0x1111111211101120ULL)
		 printf("(08) ok\n");
	    else printf("(08) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

 }

