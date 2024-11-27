

#include <stdio.h>
void print_float(float f1) {
	printf("%f\n", f1);
}
void test001() {
	printf("test0001 begin\n");
	float a0 = 0x00.0p+0;
	float a1 = 0x01.1p+1;
	float a2 = 0x02.2p+2;
	float a3 = 0x03.3p+3;
	float a4 = 0x04.4p+0;
	float a5 = 0x05.5p+1;
	float a6 = 0x06.6p+2;
	float a7 = 0x07.7p+3;
	float a8 = 0x08.8p+0;
	float a9 = 0x09.9p+1;
	float aa = 0x0a.ap+2;
	float ab = 0x0b.bp+3;
	float ac = 0x0c.cp+0;
	float ad = 0x0d.dp+1;
	float ae = 0x0e.ep+2;
	float af = 0x0f.fp+3;

	print_float(a0);
	print_float(a1);
	print_float(a2);
	print_float(a3);
	print_float(a4);
	print_float(a5);
	print_float(a6);
	print_float(a7);
	print_float(a8);
	print_float(a9);
	print_float(aa);
	print_float(ab);
	print_float(ac);
	print_float(ad);
	print_float(ae);
	print_float(af);
	printf("test001 end\n\n");
	
	return ;
}
int main() {
	test001();
}

