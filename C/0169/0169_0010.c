#include  <stdio.h>
typedef union all{
	char *			a;
	char			b;
	short int		c;
	int			d;
	long int		e;
	unsigned char		f;
	}ALL;
int lot(ALL a1, double b1,
	ALL a2, float b2,
	ALL a3, unsigned long int b3,
	ALL a4, unsigned int b4,
	ALL a5, unsigned short int b5,
	ALL a6, unsigned char b6);
int main()
{
  ALL a1,a2,a3,a4,a5,a6;
	double			b1;
	float 			b2;
	unsigned long int	b3;
	unsigned int 		b4;
	unsigned short int	b5;
	unsigned char		b6;

	char *			f1();
	char			f2();
	short			f3();
	int			f4();
	long int		f5();
	unsigned char		f6();
	unsigned short int	f7();
	unsigned int		f8();
	unsigned long int	f9();
	float			f10();
	double			f11();

	a1.a =f1();
	a2.b =f2();
	a3.c =f3();
	a4.d =f4();
	a5.e =f5();
	a6.f =f6();


	b1=f11();
	b2=f10();
	b3=f9();
	b4=f8();
	b5=f7();
	b6=f6();

	lot(a1,b1,
	    a2,b2,
	    a3,b3,
	    a4,b4,
	    a5,b5,
	    a6,b6);
}

int lot(a1,b1,
    a2,b2,
    a3,b3,
    a4,b4,
    a5,b5,
    a6,b6
    )
     ALL a1,a2,a3,a4,a5,a6;
	double			b1;
	float 			b2;
	unsigned long int	b3;
	unsigned int 		b4;
	unsigned short int	b5;
	unsigned char		b6;
{
	printf("%d\n",a6.f);
	return 0;
}

ALL cross(a)ALL a;{return a;}
char *			f1() {  static char a;return(&a); }
char			f2() {  return 255; }
short			f3() {  return 0123; }
int			f4() {  return 0xfff; }
long int		f5() {  return 999; }
unsigned char		f6() {  return 99; }
unsigned short int	f7() {  return 02343542; }
unsigned int		f8() {  return 0xfffff; }
unsigned long int	f9() {  return 435879; }
float			f10() {  return 234.0; }
double			f11() {  return 1235.0; }
