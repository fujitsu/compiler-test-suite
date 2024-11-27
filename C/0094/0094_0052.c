#include  <stdio.h>
int setv1(ca,c1,c2,c3,c4,c5,c6,c7,c8)
	char *ca,*c1;short int *c2;int *c3;unsigned char *c4;
	unsigned short int *c5;
	unsigned int *c6;float *c7;double *c8;
{
	*ca=0xff,*c1=1; *c2=2; *c3=3; *c4=4; *c5=5; *c6=6; *c7=7; *c8=8;
}
#ifndef sparc
int setv2(c9,c10)
	long double *c9;
	struct aaa{
		long double y;
	}*c10;
{
	*c9=9;
	c10->y=10;
}
#endif
int main(void)
{
	char a, bound1(), bound2(), bound3(), bound4(), bound5(),
	bound6(), bound7(), bound8(), bound9();
#ifndef sparc
	char bound9(), bound10() ;
#endif
	char b1;
	short int b2;
	int b3;
	unsigned char b4;
	unsigned short int b5;
	unsigned int b6;
	float b7;
	double b8;
#ifndef sparc
	long double b9;
	struct aaa{
		long double y;
	}b10;
#endif
	setv1(&a,&b1,&b2,&b3,&b4,&b5,&b6,&b7,&b8);
#ifndef sparc
	setv2(&b9,&b10);
#endif
	a=bound1(a,b1);
	if(a!=1){printf("ng\n");return 0;}
	a=bound2(a,b2);
	if(a!=2){printf("ng\n");return 0;}
	a=bound3(a,b3);
	if(a!=3){printf("ng\n");return 0;}
	a=bound4(a,b4);
	if(a!=4){printf("ng\n");return 0;}
	a=bound5(a,b5);
	if(a!=5){printf("ng\n");return 0;}
	a=bound6(a,b6);
	if(a!=6){printf("ng\n");return 0;}
	a=bound7(a,b7);
	if(a!=7){printf("ng\n");return 0;}
	a=bound8(a,b8);
	if(a!=8){printf("ng\n");return 0;}
#ifndef sparc
	a=bound9(a,b9);
	if(a!=9){printf("ng\n");return 0;}
	a=bound10(a,b10);
	if(a!=10){printf("ng\n");return 0;}
#endif
	printf("ok\n");
}
char bound1(a,b) char a; char b; {
	a=b; return a;
}
char bound2(a,b) char a; short int b; {
	a=b; return a;
}
char bound3(a,b) char a; int b; {
	a=b; return a;
}
char bound4(a,b) char a; unsigned char b; {
	a=b; return a;
}
char bound5(a,b) char a; unsigned short int b; {
	a=b; return a;
}
char bound6(a,b) char a; unsigned int b; {
	a=b; return a;
}
char bound7(a,b) char a; float b; {
	a=b; return a;
}
char bound8(a,b) char a; double b; {
	a=b; return a;
}
#ifndef sparc
char bound9(a,b) char a; long double b; {
	a=b; return a;
}
char bound10(a,b) char a; struct aaa{ long double y;}b; {
	a=b.y; return a;
}
#endif
