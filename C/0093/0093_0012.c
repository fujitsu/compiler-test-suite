#include <stdio.h>

int main()
 {
      signed long long int a,b,c,ccc(),bbb();
    unsigned long long int d,e,f,fff(),eee();

    c=ccc();
    b=bbb();
   
    a = ~c;
    c = a | b;
	if(c == 0x0101111101011111LL)
	     printf("(01) ok\n");
	else printf("(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

    c=ccc();

    a = ~c;
    c = a | 0x0000000000000011LL;
	if(c == 0x0000111100001111LL)
	     printf("(02) ok\n");
	else printf("(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

    f=fff();
    e=eee();

    d = ~f;
    f = d | e;
	if(f == 0x0000111100001111ULL)
	     printf("(03) ok\n");
	else printf("(03) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

    f=fff();

    d = ~f;
    f = d | 0x000000000000000cULL;
	if(f == 0x000011110000111dULL)
	     printf("(04) ok\n");
	else printf("(04) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

 }
  signed long long int ccc(){return 0xffffeeeeffffeeeeLL;}
  signed long long int bbb(){return 0x0101010101010101LL;}
unsigned long long int fff(){return 0xffffeeeeffffeeeeULL;}
unsigned long long int eee(){return 0x0000010100001010ULL;}
