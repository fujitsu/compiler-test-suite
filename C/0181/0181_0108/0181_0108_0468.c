
	
	
	
	

#include <stdio.h>                                              

struct ASJW29ID61HB00 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned char m3;
} asjw29id61hb00 = { 1, 2 };

struct ASJW29ID61IB03 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned char m3:3;
} asjw29id61ib03 = { 1, 2 };

struct ASJW29ID61IB05 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned char m3:5;
} asjw29id61ib05 = { 1, 2 };

struct ASJW29ID61HH00 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned short m3;
} asjw29id61hh00 = { 1, 2 };

struct ASJW29ID61IH03 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned short m3:3;
} asjw29id61ih03 = { 1, 2 };

struct ASJW29ID61IH13 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned short m3:13;
} asjw29id61ih13 = { 1, 2 };

struct ASJW29ID61HW00 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned long m3;
} asjw29id61hw00 = { 1, 2 };

struct ASJW29ID61IW03 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned long m3:3;
} asjw29id61iw03 = { 1, 2 };

struct ASJW29ID61IW29 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned long m3:29;
} asjw29id61iw29 = { 1, 2 };

struct ASJW29ID61HD00 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned long long m3;
} asjw29id61hd00 = { 1, 2 };

struct ASJW29ID61ID03 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned long long m3:3;
} asjw29id61id03 = { 1, 2 };

struct ASJW29ID61ID61 {
	unsigned long   :29;
	unsigned long long m2:61;
	unsigned long long m3:61;
} asjw29id61id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29ID61HS00 {
	unsigned long   :29;
	unsigned long long m2:61;
	struct TAGHB00 m3;
} asjw29id61hs00 = { 1, { 2 } };

int lto_sub_483() {

	printf("%llu\n", (unsigned long long)asjw29id61hb00.m2);
	printf("%u\n"  , asjw29id61hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61ib03.m2);
	printf("%u\n"  , asjw29id61ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61ib05.m2);
	printf("%u\n"  , asjw29id61ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61hh00.m2);
	printf("%u\n"  , asjw29id61hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61ih03.m2);
	printf("%u\n"  , asjw29id61ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61ih13.m2);
	printf("%u\n"  , asjw29id61ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61hw00.m2);
	printf("%lu\n" , asjw29id61hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61iw03.m2);
	printf("%lu\n" , asjw29id61iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61iw29.m2);
	printf("%lu\n" , asjw29id61iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61hd00.m2);
	printf("%llu\n", asjw29id61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61id03.m2);
	printf("%llu\n", (unsigned long long)asjw29id61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61id61.m2);
	printf("%llu\n", (unsigned long long)asjw29id61id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29id61hs00.m2);
	printf("%u\n"  , asjw29id61hs00.m3.m1);
	printf("\n");

	return 0;
}
