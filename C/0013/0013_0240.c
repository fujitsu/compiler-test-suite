#include <stdio.h>                                              

struct ASIW29IB03HB00 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned char m3;
} asiw29ib03hb00 = { 1, 2, 3 };

struct ASIW29IB03IB03 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned char m3:3;
} asiw29ib03ib03 = { 1, 2, 3 };

struct ASIW29IB03IB05 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned char m3:5;
} asiw29ib03ib05 = { 1, 2, 3 };

struct ASIW29IB03HH00 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned short m3;
} asiw29ib03hh00 = { 1, 2, 3 };

struct ASIW29IB03IH03 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned short m3:3;
} asiw29ib03ih03 = { 1, 2, 3 };

struct ASIW29IB03IH13 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned short m3:13;
} asiw29ib03ih13 = { 1, 2, 3 };

struct ASIW29IB03HW00 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned long m3;
} asiw29ib03hw00 = { 1, 2, 3 };

struct ASIW29IB03IW03 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned long m3:3;
} asiw29ib03iw03 = { 1, 2, 3 };

struct ASIW29IB03IW29 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned long m3:29;
} asiw29ib03iw29 = { 1, 2, 3 };

struct ASIW29IB03HD00 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned long long m3;
} asiw29ib03hd00 = { 1, 2, 3 };

struct ASIW29IB03ID03 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned long long m3:3;
} asiw29ib03id03 = { 1, 2, 3 };

struct ASIW29IB03ID61 {
	unsigned long m1:29;
	unsigned char m2:3;
	unsigned long long m3:61;
} asiw29ib03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29IB03HS00 {
	unsigned long m1:29;
	unsigned char m2:3;
	struct TAGHB00 m3;
} asiw29ib03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%d\n" , asiw29ib03hb00.m1);
	printf("%u\n"  , asiw29ib03hb00.m2);
	printf("%u\n"  , asiw29ib03hb00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03ib03.m1);
	printf("%u\n"  , asiw29ib03ib03.m2);
	printf("%u\n"  , asiw29ib03ib03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03ib05.m1);
	printf("%u\n"  , asiw29ib03ib05.m2);
	printf("%u\n"  , asiw29ib03ib05.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03hh00.m1);
	printf("%u\n"  , asiw29ib03hh00.m2);
	printf("%u\n"  , asiw29ib03hh00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03ih03.m1);
	printf("%u\n"  , asiw29ib03ih03.m2);
	printf("%u\n"  , asiw29ib03ih03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03ih13.m1);
	printf("%u\n"  , asiw29ib03ih13.m2);
	printf("%u\n"  , asiw29ib03ih13.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03hw00.m1);
	printf("%u\n"  , asiw29ib03hw00.m2);
	printf("%lu\n" , asiw29ib03hw00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03iw03.m1);
	printf("%u\n"  , asiw29ib03iw03.m2);
	printf("%d\n" , asiw29ib03iw03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03iw29.m1);
	printf("%u\n"  , asiw29ib03iw29.m2);
	printf("%d\n" , asiw29ib03iw29.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03hd00.m1);
	printf("%u\n"  , asiw29ib03hd00.m2);
	printf("%llu\n", asiw29ib03hd00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03id03.m1);
	printf("%u\n"  , asiw29ib03id03.m2);
	printf("%llu\n", (unsigned long long)asiw29ib03id03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03id61.m1);
	printf("%u\n"  , asiw29ib03id61.m2);
	printf("%llu\n", (unsigned long long)asiw29ib03id61.m3);
	printf("\n");

	printf("%d\n" , asiw29ib03hs00.m1);
	printf("%u\n"  , asiw29ib03hs00.m2);
	printf("%u\n"  , asiw29ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
