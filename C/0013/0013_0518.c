                                                             
#include <stdio.h>                                              

union BUIB03JB03 {
	unsigned char m1:3;
	unsigned char   :3;
} buib03jb03 = { 1 };

union BUIB03JB05 {
	unsigned char m1:3;
	unsigned char   :5;
} buib03jb05 = { 1 };

union BUIB03JB00 {
	unsigned char m1:3;
	unsigned char   :0;
} buib03jb00 = { 1 };

union BUIB03JH03 {
	unsigned char m1:3;
	unsigned short   :3;
} buib03jh03 = { 1 };

union BUIB03JH13 {
	unsigned char m1:3;
	unsigned short   :13;
} buib03jh13 = { 1 };

union BUIB03JH00 {
	unsigned char m1:3;
	unsigned short   :0;
} buib03jh00 = { 1 };

union BUIB03JW03 {
	unsigned char m1:3;
	unsigned long   :3;
} buib03jw03 = { 1 };

union BUIB03JW29 {
	unsigned char m1:3;
	unsigned long   :29;
} buib03jw29 = { 1 };

union BUIB03JW00 {
	unsigned char m1:3;
	unsigned long   :0;
} buib03jw00 = { 1 };

union BUIB03JD03 {
	unsigned char m1:3;
	unsigned long long   :3;
} buib03jd03 = { 1 };

union BUIB03JD61 {
	unsigned char m1:3;
	unsigned long long   :61;
} buib03jd61 = { 1 };

union BUIB03JD00 {
	unsigned char m1:3;
	unsigned long long   :0;
} buib03jd00 = { 1 };

int main() {

	printf("%u\n"  , buib03jb03.m1);
	printf("\n");

	printf("%u\n"  , buib03jb05.m1);
	printf("\n");

	printf("%u\n"  , buib03jb00.m1);
	printf("\n");

	printf("%u\n"  , buib03jh03.m1);
	printf("\n");

	printf("%u\n"  , buib03jh13.m1);
	printf("\n");

	printf("%u\n"  , buib03jh00.m1);
	printf("\n");

	printf("%u\n"  , buib03jw03.m1);
	printf("\n");

	printf("%u\n"  , buib03jw29.m1);
	printf("\n");

	printf("%u\n"  , buib03jw00.m1);
	printf("\n");

	printf("%u\n"  , buib03jd03.m1);
	printf("\n");

	printf("%u\n"  , buib03jd61.m1);
	printf("\n");

	printf("%u\n"  , buib03jd00.m1);
	printf("\n");

	return 0;
}
