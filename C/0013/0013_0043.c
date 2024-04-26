#include <stdio.h>                                              

struct ASHH00ID61HB00 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned char m3;
} ashh00id61hb00 = { 1, 2, 3 };

struct ASHH00ID61IB03 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned char m3:3;
} ashh00id61ib03 = { 1, 2, 3 };

struct ASHH00ID61IB05 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned char m3:5;
} ashh00id61ib05 = { 1, 2, 3 };

struct ASHH00ID61HH00 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned short m3;
} ashh00id61hh00 = { 1, 2, 3 };

struct ASHH00ID61IH03 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned short m3:3;
} ashh00id61ih03 = { 1, 2, 3 };

struct ASHH00ID61IH13 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned short m3:13;
} ashh00id61ih13 = { 1, 2, 3 };

struct ASHH00ID61HW00 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned long m3;
} ashh00id61hw00 = { 1, 2, 3 };

struct ASHH00ID61IW03 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned long m3:3;
} ashh00id61iw03 = { 1, 2, 3 };

struct ASHH00ID61IW29 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned long m3:29;
} ashh00id61iw29 = { 1, 2, 3 };

struct ASHH00ID61HD00 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned long long m3;
} ashh00id61hd00 = { 1, 2, 3 };

struct ASHH00ID61ID03 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned long long m3:3;
} ashh00id61id03 = { 1, 2, 3 };

struct ASHH00ID61ID61 {
	unsigned short m1;
	unsigned long long m2:61;
	unsigned long long m3:61;
} ashh00id61id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHH00ID61HS00 {
	unsigned short m1;
	unsigned long long m2:61;
	struct TAGHB00 m3;
} ashh00id61hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , ashh00id61hb00.m1);
	printf("%llu\n", (unsigned long long)ashh00id61hb00.m2);
	printf("%u\n"  , ashh00id61hb00.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61ib03.m1);
	printf("%llu\n", (unsigned long long)ashh00id61ib03.m2);
	printf("%u\n"  , ashh00id61ib03.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61ib05.m1);
	printf("%llu\n", (unsigned long long)ashh00id61ib05.m2);
	printf("%u\n"  , ashh00id61ib05.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61hh00.m1);
	printf("%llu\n", (unsigned long long)ashh00id61hh00.m2);
	printf("%u\n"  , ashh00id61hh00.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61ih03.m1);
	printf("%llu\n", (unsigned long long)ashh00id61ih03.m2);
	printf("%u\n"  , ashh00id61ih03.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61ih13.m1);
	printf("%llu\n", (unsigned long long)ashh00id61ih13.m2);
	printf("%u\n"  , ashh00id61ih13.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61hw00.m1);
	printf("%llu\n", (unsigned long long)ashh00id61hw00.m2);
	printf("%lu\n" , ashh00id61hw00.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61iw03.m1);
	printf("%llu\n", (unsigned long long)ashh00id61iw03.m2);
	printf("%d\n" , ashh00id61iw03.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61iw29.m1);
	printf("%llu\n", (unsigned long long)ashh00id61iw29.m2);
	printf("%d\n" , ashh00id61iw29.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61hd00.m1);
	printf("%llu\n", (unsigned long long)ashh00id61hd00.m2);
	printf("%llu\n", ashh00id61hd00.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61id03.m1);
	printf("%llu\n", (unsigned long long)ashh00id61id03.m2);
	printf("%llu\n", (unsigned long long)ashh00id61id03.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61id61.m1);
	printf("%llu\n", (unsigned long long)ashh00id61id61.m2);
	printf("%llu\n", (unsigned long long)ashh00id61id61.m3);
	printf("\n");

	printf("%u\n"  , ashh00id61hs00.m1);
	printf("%llu\n", (unsigned long long)ashh00id61hs00.m2);
	printf("%u\n"  , ashh00id61hs00.m3.m1);
	printf("\n");

	return 0;
}
