                                                          
#include <stdio.h>                                              

struct ASHW00ID61HB00 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned char m3;
} ashw00id61hb00 = { 1, 2, 3 };

struct ASHW00ID61IB03 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned char m3:3;
} ashw00id61ib03 = { 1, 2, 3 };

struct ASHW00ID61IB05 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned char m3:5;
} ashw00id61ib05 = { 1, 2, 3 };

struct ASHW00ID61HH00 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned short m3;
} ashw00id61hh00 = { 1, 2, 3 };

struct ASHW00ID61IH03 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned short m3:3;
} ashw00id61ih03 = { 1, 2, 3 };

struct ASHW00ID61IH13 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned short m3:13;
} ashw00id61ih13 = { 1, 2, 3 };

struct ASHW00ID61HW00 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned long m3;
} ashw00id61hw00 = { 1, 2, 3 };

struct ASHW00ID61IW03 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned long m3:3;
} ashw00id61iw03 = { 1, 2, 3 };

struct ASHW00ID61IW29 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned long m3:29;
} ashw00id61iw29 = { 1, 2, 3 };

struct ASHW00ID61HD00 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned long long m3;
} ashw00id61hd00 = { 1, 2, 3 };

struct ASHW00ID61ID03 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned long long m3:3;
} ashw00id61id03 = { 1, 2, 3 };

struct ASHW00ID61ID61 {
	unsigned long m1;
	unsigned long long m2:61;
	unsigned long long m3:61;
} ashw00id61id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00ID61HS00 {
	unsigned long m1;
	unsigned long long m2:61;
	struct TAGHB00 m3;
} ashw00id61hs00 = { 1, 2, { 3 } };

int lto_sub_83() {

	printf("%lu\n" , ashw00id61hb00.m1);
	printf("%llu\n", (unsigned long long)ashw00id61hb00.m2);
	printf("%u\n"  , ashw00id61hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61ib03.m1);
	printf("%llu\n", (unsigned long long)ashw00id61ib03.m2);
	printf("%u\n"  , ashw00id61ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61ib05.m1);
	printf("%llu\n", (unsigned long long)ashw00id61ib05.m2);
	printf("%u\n"  , ashw00id61ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61hh00.m1);
	printf("%llu\n", (unsigned long long)ashw00id61hh00.m2);
	printf("%u\n"  , ashw00id61hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61ih03.m1);
	printf("%llu\n", (unsigned long long)ashw00id61ih03.m2);
	printf("%u\n"  , ashw00id61ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61ih13.m1);
	printf("%llu\n", (unsigned long long)ashw00id61ih13.m2);
	printf("%u\n"  , ashw00id61ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61hw00.m1);
	printf("%llu\n", (unsigned long long)ashw00id61hw00.m2);
	printf("%lu\n" , ashw00id61hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61iw03.m1);
	printf("%llu\n", (unsigned long long)ashw00id61iw03.m2);
	printf("%lu\n" , ashw00id61iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61iw29.m1);
	printf("%llu\n", (unsigned long long)ashw00id61iw29.m2);
	printf("%lu\n" , ashw00id61iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61hd00.m1);
	printf("%llu\n", (unsigned long long)ashw00id61hd00.m2);
	printf("%llu\n", ashw00id61hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61id03.m1);
	printf("%llu\n", (unsigned long long)ashw00id61id03.m2);
	printf("%llu\n", (unsigned long long)ashw00id61id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61id61.m1);
	printf("%llu\n", (unsigned long long)ashw00id61id61.m2);
	printf("%llu\n", (unsigned long long)ashw00id61id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00id61hs00.m1);
	printf("%llu\n", (unsigned long long)ashw00id61hs00.m2);
	printf("%u\n"  , ashw00id61hs00.m3.m1);
	printf("\n");

	return 0;
}
