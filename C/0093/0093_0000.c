#include <stdio.h>

int main()
 {
     signed long long int a,b,e,f;
   unsigned long long int c,d;

	a=0xfffLL;    
	b = a;

	    if(b == 0xfffLL)
    	         printf("(01) ok\n");
	    else printf("(01) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));

	b = 0x00000000ffffffffLL;   
            if(b == 0x00000000ffffffffLL)
 	         printf("(02) ok\n");
	    else printf("(02) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));

	c=0x0000000100000000UL;    
	d = c;
	    if(d == 0x0000000100000000UL)
	         printf("(03) ok\n");
	    else printf("(03) ng %x %x\n",*(int *)&d,*(((int *)&d)+1));

	d = 0;
	    if(d == 0UL)
	         printf("(04) ok\n");
	    else printf("(04) ng %x %x\n",*(int *)&d,*(((int *)&d)+1));

	e=0xffffffffffffefffLL;  
	    if(e == 0xffffffffffffefffLL)
	         printf("(05) ok\n");
	    else printf("(05) ng %x %x\n",*(int *)&e,*(((int *)&e)+1));

	f = -4096LL;  
	    if(f == -4096LL) 
	         printf("(06) ok\n");
	    else printf("(06) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));
 }
