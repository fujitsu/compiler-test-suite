
	
	
	

#include <stdio.h>                                              

union BUIW03JB03 {
	unsigned long m1:3;
	unsigned char   :3;
} buiw03jb03 = { 1 };

union BUIW03JB05 {
	unsigned long m1:3;
	unsigned char   :5;
} buiw03jb05 = { 1 };

union BUIW03JB00 {
	unsigned long m1:3;
	unsigned char   :0;
} buiw03jb00 = { 1 };

union BUIW03JH03 {
	unsigned long m1:3;
	unsigned short   :3;
} buiw03jh03 = { 1 };

union BUIW03JH13 {
	unsigned long m1:3;
	unsigned short   :13;
} buiw03jh13 = { 1 };

union BUIW03JH00 {
	unsigned long m1:3;
	unsigned short   :0;
} buiw03jh00 = { 1 };

union BUIW03JW03 {
	unsigned long m1:3;
	unsigned long   :3;
} buiw03jw03 = { 1 };

union BUIW03JW29 {
	unsigned long m1:3;
	unsigned long   :29;
} buiw03jw29 = { 1 };

union BUIW03JW00 {
	unsigned long m1:3;
	unsigned long   :0;
} buiw03jw00 = { 1 };

union BUIW03JD03 {
	unsigned long m1:3;
	unsigned long long   :3;
} buiw03jd03 = { 1 };

union BUIW03JD61 {
	unsigned long m1:3;
	unsigned long long   :61;
} buiw03jd61 = { 1 };

union BUIW03JD00 {
	unsigned long m1:3;
	unsigned long long   :0;
} buiw03jd00 = { 1 };

int lto_sub_524() {

	printf("%lu\n" , buiw03jb03.m1);
	printf("\n");

	printf("%lu\n" , buiw03jb05.m1);
	printf("\n");

	printf("%lu\n" , buiw03jb00.m1);
	printf("\n");

	printf("%lu\n" , buiw03jh03.m1);
	printf("\n");

	printf("%lu\n" , buiw03jh13.m1);
	printf("\n");

	printf("%lu\n" , buiw03jh00.m1);
	printf("\n");

	printf("%lu\n" , buiw03jw03.m1);
	printf("\n");

	printf("%lu\n" , buiw03jw29.m1);
	printf("\n");

	printf("%lu\n" , buiw03jw00.m1);
	printf("\n");

	printf("%lu\n" , buiw03jd03.m1);
	printf("\n");

	printf("%lu\n" , buiw03jd61.m1);
	printf("\n");

	printf("%lu\n" , buiw03jd00.m1);
	printf("\n");

	return 0;
}
