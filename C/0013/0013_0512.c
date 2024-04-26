                                                             
#include <stdio.h>                                              

struct BSIW29JB03 {
	unsigned long m1:29;
	unsigned char   :3;
} bsiw29jb03 = { 1 };

struct BSIW29JB05 {
	unsigned long m1:29;
	unsigned char   :5;
} bsiw29jb05 = { 1 };

struct BSIW29JB00 {
	unsigned long m1:29;
	unsigned char   :0;
} bsiw29jb00 = { 1 };

struct BSIW29JH03 {
	unsigned long m1:29;
	unsigned short   :3;
} bsiw29jh03 = { 1 };

struct BSIW29JH13 {
	unsigned long m1:29;
	unsigned short   :13;
} bsiw29jh13 = { 1 };

struct BSIW29JH00 {
	unsigned long m1:29;
	unsigned short   :0;
} bsiw29jh00 = { 1 };

struct BSIW29JW03 {
	unsigned long m1:29;
	unsigned long   :3;
} bsiw29jw03 = { 1 };

struct BSIW29JW29 {
	unsigned long m1:29;
	unsigned long   :29;
} bsiw29jw29 = { 1 };

struct BSIW29JW00 {
	unsigned long m1:29;
	unsigned long   :0;
} bsiw29jw00 = { 1 };

struct BSIW29JD03 {
	unsigned long m1:29;
	unsigned long long   :3;
} bsiw29jd03 = { 1 };

struct BSIW29JD61 {
	unsigned long m1:29;
	unsigned long long   :61;
} bsiw29jd61 = { 1 };

struct BSIW29JD00 {
	unsigned long m1:29;
	unsigned long long   :0;
} bsiw29jd00 = { 1 };

int main() {

	printf("%d\n" , bsiw29jb03.m1);
	printf("\n");

	printf("%d\n" , bsiw29jb05.m1);
	printf("\n");

	printf("%d\n" , bsiw29jb00.m1);
	printf("\n");

	printf("%d\n" , bsiw29jh03.m1);
	printf("\n");

	printf("%d\n" , bsiw29jh13.m1);
	printf("\n");

	printf("%d\n" , bsiw29jh00.m1);
	printf("\n");

	printf("%d\n" , bsiw29jw03.m1);
	printf("\n");

	printf("%d\n" , bsiw29jw29.m1);
	printf("\n");

	printf("%d\n" , bsiw29jw00.m1);
	printf("\n");

	printf("%d\n" , bsiw29jd03.m1);
	printf("\n");

	printf("%d\n" , bsiw29jd61.m1);
	printf("\n");

	printf("%d\n" , bsiw29jd00.m1);
	printf("\n");

	return 0;
}
