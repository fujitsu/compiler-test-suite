                                                             
#include <stdio.h>                                              

union BUIB05JB03 {
	unsigned char m1:5;
	unsigned char   :3;
} buib05jb03 = { 1 };

union BUIB05JB05 {
	unsigned char m1:5;
	unsigned char   :5;
} buib05jb05 = { 1 };

union BUIB05JB00 {
	unsigned char m1:5;
	unsigned char   :0;
} buib05jb00 = { 1 };

union BUIB05JH03 {
	unsigned char m1:5;
	unsigned short   :3;
} buib05jh03 = { 1 };

union BUIB05JH13 {
	unsigned char m1:5;
	unsigned short   :13;
} buib05jh13 = { 1 };

union BUIB05JH00 {
	unsigned char m1:5;
	unsigned short   :0;
} buib05jh00 = { 1 };

union BUIB05JW03 {
	unsigned char m1:5;
	unsigned long   :3;
} buib05jw03 = { 1 };

union BUIB05JW29 {
	unsigned char m1:5;
	unsigned long   :29;
} buib05jw29 = { 1 };

union BUIB05JW00 {
	unsigned char m1:5;
	unsigned long   :0;
} buib05jw00 = { 1 };

union BUIB05JD03 {
	unsigned char m1:5;
	unsigned long long   :3;
} buib05jd03 = { 1 };

union BUIB05JD61 {
	unsigned char m1:5;
	unsigned long long   :61;
} buib05jd61 = { 1 };

union BUIB05JD00 {
	unsigned char m1:5;
	unsigned long long   :0;
} buib05jd00 = { 1 };

int main() {

	printf("%u\n"  , buib05jb03.m1);
	printf("\n");

	printf("%u\n"  , buib05jb05.m1);
	printf("\n");

	printf("%u\n"  , buib05jb00.m1);
	printf("\n");

	printf("%u\n"  , buib05jh03.m1);
	printf("\n");

	printf("%u\n"  , buib05jh13.m1);
	printf("\n");

	printf("%u\n"  , buib05jh00.m1);
	printf("\n");

	printf("%u\n"  , buib05jw03.m1);
	printf("\n");

	printf("%u\n"  , buib05jw29.m1);
	printf("\n");

	printf("%u\n"  , buib05jw00.m1);
	printf("\n");

	printf("%u\n"  , buib05jd03.m1);
	printf("\n");

	printf("%u\n"  , buib05jd61.m1);
	printf("\n");

	printf("%u\n"  , buib05jd00.m1);
	printf("\n");

	return 0;
}
