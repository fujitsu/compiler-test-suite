#include  <stdio.h>
typedef union all{
	char *			a;
	char			b;
	short int		c;
	int			d;
	long int		e;
	unsigned char		f;
	unsigned short int	g;
	unsigned int		h;
	unsigned long int	i;
	float			j;
	double			k;
	}ALL;
int lot(ALL a1, double b1,
	ALL a2, float b2,
	ALL a3, unsigned long int b3,
	ALL a4, unsigned int b4,
	ALL a5, unsigned short int b5,
	ALL a6, unsigned char b6,
	ALL a7, long int b7,
	ALL a8, int b8,
	ALL a9, short b9,
	ALL a10, char b10,
	ALL a11, char *b11);
int main()
{
	ALL a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11;
	double			b1;
	float 			b2;
	unsigned long int	b3;
	unsigned int 		b4;
	unsigned short int	b5;
	unsigned char		b6;
	long int		b7;
	int			b8;
	short			b9;
	char			b10;
	char *			b11;
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
	a7.g =f7();
	a8.h =f8();
	a9.i =f9();
	a10.j =f10();
	a11.k =f11();
	b1=f11();
	b2=f10();
	b3=f9();
	b4=f8();
	b5=f7();
	b6=f6();
	b7=f5();
	b8=f4();
	b9=f3();
	b10=f2();
	b11=f1();
	lot(a1,b1,
	    a2,b2,
	    a3,b3,
	    a4,b4,
	    a5,b5,
	    a6,b6,
	    a7,b7,
	    a8,b8,
	    a9,b9,
	    a10,b10,
	    a11,b11);
}
int lot(a1,b1,
    a2,b2,
    a3,b3,
    a4,b4,
    a5,b5,
    a6,b6,
    a7,b7,
    a8,b8,
    a9,b9,
    a10,b10,
    a11,b11)
	ALL a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11;
	double			b1;
	float 			b2;
	unsigned long int	b3;
	unsigned int 		b4;
	unsigned short int	b5;
	unsigned char		b6;
	long int		b7;
	int			b8;
	short			b9;
	char			b10;
	char *			b11;
{
	ALL cross();
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

	if(cross(a1).a !=f1()) {
		printf("%d %d\n",cross(a1).a,f1());
		printf("(no.1)***ng 1\n");
		return 0;
	}
	if(cross(a2).b !=f2()) {
		printf("(no.1)***ng 2\n");
		return 0;
	}
	if(cross(a3).c !=f3()) {
		printf("(no.1)***ng 3\n");
		return 0;
	}
	if(cross(a4).d !=f4()) {
		printf("(no.1)***ng 4\n");
		return 0;
	}
	if(cross(a5).e !=f5()) {
		printf("(no.1)***ng 5\n");
		return 0;
	}
	if(cross(a6).f !=f6()) {
		printf("(no.1)***ng 6\n");
		return 0;
	}
	if(cross(a7).g !=f7()) {
		printf("(no.1)***ng 7\n");
		return 0;
	}
	if(cross(a8).h !=f8()) {
		printf("(no.1)***ng 8\n");
		return 0;
	}
	if(cross(a9).i !=f9()) {
		printf("(no.1)***ng 9\n");
		return 0;
	}
	if(cross(a10).j !=f10()) {
		printf("%d %d\n",cross(a10).j,f10());
		printf("(no.1)***ng 11\n");
		return 0;
	}
	if(cross(a11).k !=f11()) {
		printf("(no.1)***ng 12\n");
		return 0;
	}
	printf("(no.1)***ok\n");

	if(b1!=f11()) {
		printf("(no.2)***ng 13\n");
		return 0;
	}
	if(b2!=f10()) {
		printf("(no.2)***ng 14\n");
		return 0;
	}
	if(b3!=f9()) {
		printf("(no.2)***ng 15\n");
		return 0;
	}
	if(b4!=f8()) {
		printf("(no.2)***ng 16\n");
		return 0;
	}
	if(b5!=f7()) {
		printf("(no.2)***ng 17\n");
		return 0;
	}
	if(b6!=f6()) {
		printf("(no.2)***ng 18\n");
		return 0;
	}
	if(b7!=f5()) {
		printf("(no.2)***ng 19\n");
		return 0;
	}
	if(b8!=f4()) {
		printf("(no.2)***ng 20\n");
		return 0;
	}
	if(b9!=f3()) {
		printf("(no.2)***ng 21\n");
		return 0;
	}
	if(b10!=f2()) {
		printf("(no.2)***ng 22\n");
		return 0;
	}
	if(b11!=f1()) {
		printf("(no.2)***ng 23\n");
		return 0;
	}
	printf("(no.2)***ok\n");

	if(cross(a1).a !=a1.a) {
		printf("(no.3)***ng 24\n");
		return 0;
	}
	if(cross(a2).b !=a2.b) {
		printf("(no.3)***ng 25\n");
		return 0;
	}
	if(cross(a3).c !=a3.c) {
		printf("(no.3)***ng 26\n");
		return 0;
	}
	if(cross(a4).d !=a4.d) {
		printf("(no.3)***ng 27\n");
		return 0;
	}
	if(cross(a5).e !=a5.e) {
		printf("(no.3)***ng 28\n");
		return 0;
	}
	if(cross(a6).f !=a6.f) {
		printf("(no.3)***ng 29\n");
		return 0;
	}
	if(cross(a7).g !=a7.g) {
		printf("(no.3)***ng 30\n");
		return 0;
	}
	if(cross(a8).h !=a8.h) {
		printf("(no.3)***ng 31\n");
		return 0;
	}
	if(cross(a9).i !=a9.i) {
		printf("(no.3)***ng 32\n");
		return 0;
	}
	if(cross(a10).j !=a10.j) {
		printf("(no.3)***ng 33\n");
		return 0;
	}
	if(cross(a11).k !=a11.k) {
		printf("(no.3)***ng 34\n");
		return 0;
	}
	printf("(no.3)***ok\n");
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
