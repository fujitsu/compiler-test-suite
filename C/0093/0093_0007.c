#include <stdio.h>

int main()
 {
     signed long long int a,b,c;
   unsigned long long int d,e,f;

   a=0x0000111100001111LL;
   b=0xffffffff00001111LL;

   c = a ^ b;
	if(c == 0xffffeeee00000000LL)
	     printf("(01) ok\n");
	else printf("(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));
	
   c = a ^ 0x0000000000000111LL;
	if(c == 0x0000111100001000LL)
	     printf("(02) ok\n");
	else printf("(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

   c=0x0000101011001111ULL;
   d=0x000000000000000cULL;

   f = c ^ d;
 	if(f == 0x000010101100111dULL)
	     printf("(03) ok\n");
	else printf("(03) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

   f = c ^ 0x0000000000000100ULL;
	if(f == 0x0000101011001011ULL)
	     printf("(04) ok\n");
	else printf("(04) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

 }

