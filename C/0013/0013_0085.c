#include <stdio.h>                                              

struct ASHW00IH13HB00 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned char m3;
} ashw00ih13hb00 = { 1, 2, 3 };

struct ASHW00IH13IB03 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned char m3:3;
} ashw00ih13ib03 = { 1, 2, 3 };

struct ASHW00IH13IB05 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned char m3:5;
} ashw00ih13ib05 = { 1, 2, 3 };

struct ASHW00IH13HH00 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned short m3;
} ashw00ih13hh00 = { 1, 2, 3 };

struct ASHW00IH13IH03 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned short m3:3;
} ashw00ih13ih03 = { 1, 2, 3 };

struct ASHW00IH13IH13 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned short m3:13;
} ashw00ih13ih13 = { 1, 2, 3 };

struct ASHW00IH13HW00 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned long m3;
} ashw00ih13hw00 = { 1, 2, 3 };

struct ASHW00IH13IW03 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned long m3:3;
} ashw00ih13iw03 = { 1, 2, 3 };

struct ASHW00IH13IW29 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned long m3:29;
} ashw00ih13iw29 = { 1, 2, 3 };

struct ASHW00IH13HD00 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned long long m3;
} ashw00ih13hd00 = { 1, 2, 3 };

struct ASHW00IH13ID03 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned long long m3:3;
} ashw00ih13id03 = { 1, 2, 3 };

struct ASHW00IH13ID61 {
	unsigned long m1;
	unsigned short m2:13;
	unsigned long long m3:61;
} ashw00ih13id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00IH13HS00 {
	unsigned long m1;
	unsigned short m2:13;
	struct TAGHB00 m3;
} ashw00ih13hs00 = { 1, 2, { 3 } };

int main() {

	printf("%lu\n" , ashw00ih13hb00.m1);
	printf("%u\n"  , ashw00ih13hb00.m2);
	printf("%u\n"  , ashw00ih13hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13ib03.m1);
	printf("%u\n"  , ashw00ih13ib03.m2);
	printf("%u\n"  , ashw00ih13ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13ib05.m1);
	printf("%u\n"  , ashw00ih13ib05.m2);
	printf("%u\n"  , ashw00ih13ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13hh00.m1);
	printf("%u\n"  , ashw00ih13hh00.m2);
	printf("%u\n"  , ashw00ih13hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13ih03.m1);
	printf("%u\n"  , ashw00ih13ih03.m2);
	printf("%u\n"  , ashw00ih13ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13ih13.m1);
	printf("%u\n"  , ashw00ih13ih13.m2);
	printf("%u\n"  , ashw00ih13ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13hw00.m1);
	printf("%u\n"  , ashw00ih13hw00.m2);
	printf("%lu\n" , ashw00ih13hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13iw03.m1);
	printf("%u\n"  , ashw00ih13iw03.m2);
	printf("%d\n" , ashw00ih13iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13iw29.m1);
	printf("%u\n"  , ashw00ih13iw29.m2);
	printf("%d\n" , ashw00ih13iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13hd00.m1);
	printf("%u\n"  , ashw00ih13hd00.m2);
	printf("%llu\n", ashw00ih13hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13id03.m1);
	printf("%u\n"  , ashw00ih13id03.m2);
	printf("%llu\n", (unsigned long long)ashw00ih13id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13id61.m1);
	printf("%u\n"  , ashw00ih13id61.m2);
	printf("%llu\n", (unsigned long long)ashw00ih13id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00ih13hs00.m1);
	printf("%u\n"  , ashw00ih13hs00.m2);
	printf("%u\n"  , ashw00ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
