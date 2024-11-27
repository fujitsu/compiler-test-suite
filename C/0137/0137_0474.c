#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
     signed long long int a,b,c;
   unsigned long long int d,e,f;

   a=0x0000111100000001LL;
   b=0x1111011100001111LL;

   c = a & b;
 	if(c == 0x0000011100000001LL)
	     printf("comk2009-(01) ok\n");
	else printf("comk2009-(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

   c = a & 0x0000000000000111LL;
	if(c == 0x0000000000000001LL)
	     printf("comk2009-(02) ok\n");
	else printf("comk2009-(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

   d=0x0000101011110001LL;
   e=0x0000101000001010LL;

   f = d & e;
	if(f == 0x0000101000000000LL)
	     printf("comk2009-(03) ok\n");
	else printf("comk2009-(03) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

   f = d & 0x0000000000000111LL;
	if(f == 0x0000000000000001LL)
	     printf("comk2009-(04) ok\n");
	else printf("comk2009-(04) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));
 
exit (0);
 }
