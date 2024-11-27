#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
     signed long long int a,b,c;
   unsigned long long int d,e,f;

   	a=0x0000000000000010LL;
	b=0x0000000000000001LL;

	c = a - b;
	    if(c == 0x000000000000000fLL)
 		 printf("comk2003-(01) ok\n");
	    else printf("comk2003-(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000000000001LL;
	b=0x0000000000000002LL;

	c = a - b;
	    if(c == 0xffffffffffffffffLL)
		 printf("comk2003-(02) ok\n");
	    else printf("comk2003-(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000100000000LL;
	
	c = a - 0x00000000ffffffffLL;
	    if(c == 0x0000000000000001LL)
		 printf("comk2003-(03) ok\n");
	    else printf("comk2003-(03) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000000000000LL;

	c = a - 0x0000000000000002LL;
 	    if(c == 0xfffffffffffffffeLL)
		 printf("comk2003-(04) ok\n");
	    else printf("comk2003-(04) ng %s %s\n",*(int *)&c,*(((int *)&c)+1));

	d=0x1111000011110000LL;
	e=0x0000111100001111LL;

	f = d - e;
	    if(f == 0x1110eeef1110eeefLL)
		 printf("comk2003-(05) ok\n");
	    else printf("comk2003-(05) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x0000010000000000LL;
	e=0x0000000f00000000LL;
	   
	f = d - e;
	    if(f == 0x000000f100000000LL)
		 printf("comk2003-(06) ok\n");
	    else printf("comk2003-(06) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x00001111ffff0000LL;

	f = d - 0x0000000000000000LL;
	    if(f ==0x00001111ffff0000LL)
		 printf("comk2003-(07) ok\n");
	    else printf("comk2003-(07) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x1111111111111111LL;
	
	f = d - 0x00000000ffffffffLL;
	    if(f == 0x1111111011111112LL)
		 printf("comk2003-(08) ok\n");
	    else printf("comk2003-(08) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

 	a = -1LL;
	b = -a;
	    if(b == 1LL)
		 printf("comk2003-(09) ok\n");
	    else printf("comk2003-(09) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));
 
exit (0);
 }

