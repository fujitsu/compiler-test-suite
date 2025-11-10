
	
	
	

#include <stdio.h>                                              

union BUIW29JB03 {
	unsigned long m1:29;
	unsigned char   :3;
} buiw29jb03 = { 1 };

union BUIW29JB05 {
	unsigned long m1:29;
	unsigned char   :5;
} buiw29jb05 = { 1 };

union BUIW29JB00 {
	unsigned long m1:29;
	unsigned char   :0;
} buiw29jb00 = { 1 };

union BUIW29JH03 {
	unsigned long m1:29;
	unsigned short   :3;
} buiw29jh03 = { 1 };

union BUIW29JH13 {
	unsigned long m1:29;
	unsigned short   :13;
} buiw29jh13 = { 1 };

union BUIW29JH00 {
	unsigned long m1:29;
	unsigned short   :0;
} buiw29jh00 = { 1 };

union BUIW29JW03 {
	unsigned long m1:29;
	unsigned long   :3;
} buiw29jw03 = { 1 };

union BUIW29JW29 {
	unsigned long m1:29;
	unsigned long   :29;
} buiw29jw29 = { 1 };

union BUIW29JW00 {
	unsigned long m1:29;
	unsigned long   :0;
} buiw29jw00 = { 1 };

union BUIW29JD03 {
	unsigned long m1:29;
	unsigned long long   :3;
} buiw29jd03 = { 1 };

union BUIW29JD61 {
	unsigned long m1:29;
	unsigned long long   :61;
} buiw29jd61 = { 1 };

union BUIW29JD00 {
	unsigned long m1:29;
	unsigned long long   :0;
} buiw29jd00 = { 1 };

int lto_sub_525() {

	printf("%lu\n" , buiw29jb03.m1);
	printf("\n");

	printf("%lu\n" , buiw29jb05.m1);
	printf("\n");

	printf("%lu\n" , buiw29jb00.m1);
	printf("\n");

	printf("%lu\n" , buiw29jh03.m1);
	printf("\n");

	printf("%lu\n" , buiw29jh13.m1);
	printf("\n");

	printf("%lu\n" , buiw29jh00.m1);
	printf("\n");

	printf("%lu\n" , buiw29jw03.m1);
	printf("\n");

	printf("%lu\n" , buiw29jw29.m1);
	printf("\n");

	printf("%lu\n" , buiw29jw00.m1);
	printf("\n");

	printf("%lu\n" , buiw29jd03.m1);
	printf("\n");

	printf("%lu\n" , buiw29jd61.m1);
	printf("\n");

	printf("%lu\n" , buiw29jd00.m1);
	printf("\n");

	return 0;
}
