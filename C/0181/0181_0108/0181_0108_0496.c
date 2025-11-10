
	
	
	

#include <stdio.h>                                              

struct BSIW03JB03 {
	unsigned long m1:3;
	unsigned char   :3;
} bsiw03jb03 = { 1 };

struct BSIW03JB05 {
	unsigned long m1:3;
	unsigned char   :5;
} bsiw03jb05 = { 1 };

struct BSIW03JB00 {
	unsigned long m1:3;
	unsigned char   :0;
} bsiw03jb00 = { 1 };

struct BSIW03JH03 {
	unsigned long m1:3;
	unsigned short   :3;
} bsiw03jh03 = { 1 };

struct BSIW03JH13 {
	unsigned long m1:3;
	unsigned short   :13;
} bsiw03jh13 = { 1 };

struct BSIW03JH00 {
	unsigned long m1:3;
	unsigned short   :0;
} bsiw03jh00 = { 1 };

struct BSIW03JW03 {
	unsigned long m1:3;
	unsigned long   :3;
} bsiw03jw03 = { 1 };

struct BSIW03JW29 {
	unsigned long m1:3;
	unsigned long   :29;
} bsiw03jw29 = { 1 };

struct BSIW03JW00 {
	unsigned long m1:3;
	unsigned long   :0;
} bsiw03jw00 = { 1 };

struct BSIW03JD03 {
	unsigned long m1:3;
	unsigned long long   :3;
} bsiw03jd03 = { 1 };

struct BSIW03JD61 {
	unsigned long m1:3;
	unsigned long long   :61;
} bsiw03jd61 = { 1 };

struct BSIW03JD00 {
	unsigned long m1:3;
	unsigned long long   :0;
} bsiw03jd00 = { 1 };

int lto_sub_511() {

	printf("%lu\n" , bsiw03jb03.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jb05.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jb00.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jh03.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jh13.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jh00.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jw03.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jw29.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jw00.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jd03.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jd61.m1);
	printf("\n");

	printf("%lu\n" , bsiw03jd00.m1);
	printf("\n");

	return 0;
}
