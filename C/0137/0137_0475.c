#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
      signed long long int a,b,c;
    unsigned long long int d,e,f;

    a=0x0000111100001111LL;
    b=0x0101010101010101LL;
   
    c = a | b;
	if(c == 0x0101111101011111LL)
	     printf("comk2010-(01) ok\n");
	else printf("comk2010-(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

    c = a | 0x0000000000000011LL;
	if(c == 0x0000111100001111LL)
	     printf("comk2010-(02) ok\n");
	else printf("comk2010-(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

    d=0x0000111100001111LL;
    e=0x0000010100001010LL;

    f = d | e;
	if(f == 0x0000111100001111LL)
	     printf("comk2010-(03) ok\n");
	else printf("comk2010-(03) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

    f = d | 0x000000000000000cLL;
	if(f == 0x000011110000111dLL)
	     printf("comk2010-(04) ok\n");
	else printf("comk2010-(04) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

exit (0);
 }
