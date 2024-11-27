#include <stdio.h>

struct ts{
	  signed long long int a;
  	unsigned long long int b;
     union tu{
	  signed long long int c;
 	unsigned long long int d;
     }uni;
};
int main()
 {
     struct ts str;
     long long int func();

	func(&str);
	printf(str.a==0xffffffffffffffffLL ? 
                      	"(01) ok\n" : "(01) ng\n"); 
	printf(str.b==0x0000111100001111ULL ?
			"(02) ok\n" : "(02) ng\n");
	printf(str.uni.c==0xffffffffffffffffLL ?
  			"(03) ok\n" : "(03) ng\n");
}
long long int func(p)
    struct ts *p;
 {
	p->a = 0xffffffffffffffffLL;
	p->b = 0x0000111100001111ULL;
 	p->uni.c = 0xffffffffffffffffLL;
 }
