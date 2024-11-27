#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
     signed long long int a,b,c;
   unsigned long long int d,e,f;

   	a=0x0000000000000001LL;
	b=0x0000000000001000LL;

	c = a + b;
	    if(c == 0x0000000000001001LL)
 		 printf("comk2002-(01) ok\n");
	    else printf("comk2002-(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x00000000ffffffffLL;
	b=0x0000000000000001LL;

	c = a + b;
	    if(c == 0x0000000100000000LL)
		 printf("comk2002-(02) ok\n");
	    else printf("comk2002-(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0x0000000000000000LL;
	
	c = a + 0xffffffffffffffffLL;
	    if(c == 0xffffffffffffffffLL)
		 printf("comk2002-(03) ok\n");
	    else printf("comk2002-(03) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

	a=0xffffffffffffffffLL;

	c = a + 0x0000000000000002LL;
 	    if(c == 0x0000000000000001LL)
		 printf("comk2002-(04) ok\n");
	    else printf("comk2002-(04) ng %s %s\n",*(int *)&c,*(((int *)&c)+1));
 
	d=0x0000111100001111LL;
	e=0x1111000011110000LL;

	f = d + e;
	    if(f == 0x1111111111111111LL)
		 printf("comk2002-(05) ok\n");
	    else printf("comk2002-(05) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x0000000010000000LL;
	e=0x00000000f0000000LL;
	   
	f = d + e;
	    if(f == 0x0000000100000000LL)
		 printf("comk2002-(06) ok\n");
	    else printf("comk2002-(06) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x00001111ffff0000LL;

	f = d + 0x0000000000000000LL;
	    if(f ==0x00001111ffff0000LL)
		 printf("comk2002-(07) ok\n");
	    else printf("comk2002-(07) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

	d=0x00000000ffff000fLL;
	
	f = d + 0x1111111111111111LL;
	    if(f == 0x1111111211101120LL)
		 printf("comk2002-(08) ok\n");
	    else printf("comk2002-(08) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

exit (0);
 }

