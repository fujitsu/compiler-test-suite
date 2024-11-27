#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
     signed long long int a,b,c;
   unsigned long long int d,e,f;

   a=0x0000111100001111LL;
   b=0xffffffff00001111LL;

   c = a ^ b;
	if(c == 0xffffeeee00000000LL)
	     printf("comk2011-(01) ok\n");
	else printf("comk2011-(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));
	
   c = a ^ 0x0000000000000111LL;
	if(c == 0x0000111100001000LL)
	     printf("comk2011-(02) ok\n");
	else printf("comk2011-(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

   c=0x0000101011001111LL;
   d=0x000000000000000cLL;

   f = c ^ d;
 	if(f == 0x000010101100111dLL)
	     printf("comk2011-(03) ok\n");
	else printf("comk2011-(03) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

   f = c ^ 0x0000000000000100LL;
	if(f == 0x0000101011001011LL)
	     printf("comk2011-(04) ok\n");
	else printf("comk2011-(04) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

exit (0);
 }

