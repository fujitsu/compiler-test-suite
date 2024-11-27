#include <stdio.h>

struct t{
	unsigned long long int a:2;  
	unsigned long long int b:5;
	  signed long long int c:3;  
	  signed long long int d:8;  
	};
int main()
 {
	struct t  s;
	struct t  *y;
	struct t  w[3];
	int       i;
	
	s.a=0x00ULL;
	s.b=0x11ULL;
	s.c=0x01LL;
	s.d=0xffLL;

	if(s.a==0x00  &&  s.b==0x11
		      &&  s.c==0x01
		      &&  s.d==-1)
			printf("(01) ok\n");
	else		printf("(01) ng\n");


	y=&s;

	y->a=0x00ULL;
	y->b=0x11ULL;
	y->c=0x01LL;
	y->d=0xffLL;

	if(y->a==0x00  &&  y->b==0x11
		       &&  y->c==0x01
		       &&  y->d==-1)
			printf("(02) ok\n");
	else		printf("(02) ng\n");


	for(i=0; i<3; i++) {
		w[i].a=0x00ULL+(long long)i;
		w[i].b=0x11ULL+(long long)i;
		w[i].c=0x01LL +(long long)i;
		w[i].d=0xffLL +(long long)i;
	}
		
		if(w[0].a==0x00  &&  w[1].a==0x01  &&  w[2].a==0x02)
			printf("(03) ok\n");
		else	printf("(03) ng\n");

		if(w[0].b==0x11  &&  w[1].b==0x12  &&  w[2].b==0x13)
			printf("(04) ok\n");
		else	printf("(04) ng\n");

		if(w[0].c==0x01  &&  w[1].c==0x02  &&  w[2].c==0x03)
			printf("(05) ok\n");
		else 	printf("(05) ng\n");

		if(w[0].d==-1  &&  w[1].d==0x00  &&  w[2].d==0x01)
			printf("(06) ok\n");
		else	printf("(06) ng\n");

 }
