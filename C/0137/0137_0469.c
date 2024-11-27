#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
     signed long long int a,b,e,f;
   unsigned long long int c,d;

	a=0xfffLL;   
	b = a;

	    if(b == 0xfffLL)
    	         printf("comk2001-(01) ok\n");
	    else printf("comk2001-(01) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));

	b = 0x00000000ffffffffLL;  
            if(b == 0x00000000ffffffffLL)
 	         printf("comk2001-(02) ok\n");
	    else printf("comk2001-(02) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));

	c=0x0000000100000000UL;    
	d = c;
	    if(d == 0x0000000100000000UL)
	         printf("comk2001-(03) ok\n");
	    else printf("comk2001-(03) ng %x %x\n",*(int *)&d,*(((int *)&d)+1));

	d = 0;
	    if(d == 0UL)
	         printf("comk2001-(04) ok\n");
	    else printf("comk2001-(04) ng %x %x\n",*(int *)&d,*(((int *)&d)+1));

	e=0xffffffffffffefffLL;  
	    if(e == 0xffffffffffffefffLL)
	         printf("comk2001-(05) ok\n");
	    else printf("comk2001-(05) ng %x %x\n",*(int *)&e,*(((int *)&e)+1));

	f = -4096LL;  
	    if(f == -4096LL) 
	         printf("comk2001-(06) ok\n");
	    else printf("comk2001-(06) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));
exit (0);
 }
