#include <stdio.h>

int main()
 {
     signed long long int a,b,c,ccc(),bbb();
   unsigned long long int d,e,f,fff(),eee();

   c=ccc();
   b=bbb();

   a = ~c;
   c = a & b;
 	if(c == 0x0000011100000000LL)
	     printf("(01) ok\n");
	else printf("(01) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

   c=ccc();

   a = ~c; 
   c = a & 0x0000000000000111LL;
	if(c == 0x0000000000000001LL)
	     printf("(02) ok\n");
	else printf("(02) ng %x %x\n",*(int *)&c,*(((int *)&c)+1));

   f=fff();
   e=eee();

   d = ~f;
   f = d & e;
	if(f == 0x0000101000000000ULL)
	     printf("(03) ok\n");
	else printf("(03) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

   f=fff();

   d = ~f;
   f = d & 0x0000000000000111ULL;
	if(f == 0x0000000000000001ULL)
	     printf("(04) ok\n");
	else printf("(04) ng %x %x\n",*(int *)&f,*(((int *)&f)+1));

 }
  signed long long int ccc(){return 0xffffeeeefffffffeLL;}
  signed long long int bbb(){return 0x1111011100001010LL;}
unsigned long long int fff(){return 0xffffefefeeeefffeULL;}
unsigned long long int eee(){return 0x0000101000001010ULL;}
