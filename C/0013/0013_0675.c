                                                             
#include <stdio.h>                                              

union JUHB00JB03 {
	unsigned char m1;
	unsigned int    :0;
	unsigned char   :5;
} juhb00jb03 = { 1 };

union JUJB00HB00 {
	unsigned char   :3;
	unsigned int    :0;
	unsigned char m2;
} jujb00hb00 = { 1 };

int main() {

	printf("%u\n"  , juhb00jb03.m1);
	printf("%u\n"  , jujb00hb00.m2);
	printf("\n");

	return 0;
}
