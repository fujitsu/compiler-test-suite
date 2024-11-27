#include <stdio.h>

int main()
 {
      signed long long int a,b,c;
    unsigned long long int d,e,f;

    a=0x0000111100001111LL;
    b=0x0101010101010101LL;
   
    c = a | b;
	if(c == 0x0101111101011111LL)
	     printf("(01) ok\n");
	else printf("(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

    c = a | 0x0000000000000011LL;
	if(c == 0x0000111100001111LL)
	     printf("(02) ok\n");
	else printf("(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

    d=0x0000111100001111ULL;
    e=0x0000010100001010ULL;

    f = d | e;
	if(f == 0x0000111100001111ULL)
	     printf("(03) ok\n");
	else printf("(03) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

    f = d | 0x000000000000000cULL;
	if(f == 0x000011110000111dULL)
	     printf("(04) ok\n");
	else printf("(04) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

 }
