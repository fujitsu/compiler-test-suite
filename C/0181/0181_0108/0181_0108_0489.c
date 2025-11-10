
	
	
	

#include <stdio.h>                                              

struct BSHW00JB03 {
	unsigned long m1;
	unsigned char   :3;
} bshw00jb03 = { 1 };

struct BSHW00JB05 {
	unsigned long m1;
	unsigned char   :5;
} bshw00jb05 = { 1 };

struct BSHW00JB00 {
	unsigned long m1;
	unsigned char   :0;
} bshw00jb00 = { 1 };

struct BSHW00JH03 {
	unsigned long m1;
	unsigned short   :3;
} bshw00jh03 = { 1 };

struct BSHW00JH13 {
	unsigned long m1;
	unsigned short   :13;
} bshw00jh13 = { 1 };

struct BSHW00JH00 {
	unsigned long m1;
	unsigned short   :0;
} bshw00jh00 = { 1 };

struct BSHW00JW03 {
	unsigned long m1;
	unsigned long   :3;
} bshw00jw03 = { 1 };

struct BSHW00JW29 {
	unsigned long m1;
	unsigned long   :29;
} bshw00jw29 = { 1 };

struct BSHW00JW00 {
	unsigned long m1;
	unsigned long   :0;
} bshw00jw00 = { 1 };

struct BSHW00JD03 {
	unsigned long m1;
	unsigned long long   :3;
} bshw00jd03 = { 1 };

struct BSHW00JD61 {
	unsigned long m1;
	unsigned long long   :61;
} bshw00jd61 = { 1 };

struct BSHW00JD00 {
	unsigned long m1;
	unsigned long long   :0;
} bshw00jd00 = { 1 };

int lto_sub_504() {

	printf("%lu\n" , bshw00jb03.m1);
	printf("\n");

	printf("%lu\n" , bshw00jb05.m1);
	printf("\n");

	printf("%lu\n" , bshw00jb00.m1);
	printf("\n");

	printf("%lu\n" , bshw00jh03.m1);
	printf("\n");

	printf("%lu\n" , bshw00jh13.m1);
	printf("\n");

	printf("%lu\n" , bshw00jh00.m1);
	printf("\n");

	printf("%lu\n" , bshw00jw03.m1);
	printf("\n");

	printf("%lu\n" , bshw00jw29.m1);
	printf("\n");

	printf("%lu\n" , bshw00jw00.m1);
	printf("\n");

	printf("%lu\n" , bshw00jd03.m1);
	printf("\n");

	printf("%lu\n" , bshw00jd61.m1);
	printf("\n");

	printf("%lu\n" , bshw00jd00.m1);
	printf("\n");

	return 0;
}
