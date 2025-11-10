
	
	
	
	

#include <stdio.h>                                              

struct ASJB03ID03HB00 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned char m3;
} asjb03id03hb00 = { 1, 2 };

struct ASJB03ID03IB03 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned char m3:3;
} asjb03id03ib03 = { 1, 2 };

struct ASJB03ID03IB05 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned char m3:5;
} asjb03id03ib05 = { 1, 2 };

struct ASJB03ID03HH00 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned short m3;
} asjb03id03hh00 = { 1, 2 };

struct ASJB03ID03IH03 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned short m3:3;
} asjb03id03ih03 = { 1, 2 };

struct ASJB03ID03IH13 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned short m3:13;
} asjb03id03ih13 = { 1, 2 };

struct ASJB03ID03HW00 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned long m3;
} asjb03id03hw00 = { 1, 2 };

struct ASJB03ID03IW03 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned long m3:3;
} asjb03id03iw03 = { 1, 2 };

struct ASJB03ID03IW29 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned long m3:29;
} asjb03id03iw29 = { 1, 2 };

struct ASJB03ID03HD00 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned long long m3;
} asjb03id03hd00 = { 1, 2 };

struct ASJB03ID03ID03 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned long long m3:3;
} asjb03id03id03 = { 1, 2 };

struct ASJB03ID03ID61 {
	unsigned char   :3;
	unsigned long long m2:3;
	unsigned long long m3:61;
} asjb03id03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03ID03HS00 {
	unsigned char   :3;
	unsigned long long m2:3;
	struct TAGHB00 m3;
} asjb03id03hs00 = { 1, { 2 } };

int lto_sub_282() {

	printf("%llu\n", (unsigned long long)asjb03id03hb00.m2);
	printf("%u\n"  , asjb03id03hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03ib03.m2);
	printf("%u\n"  , asjb03id03ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03ib05.m2);
	printf("%u\n"  , asjb03id03ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03hh00.m2);
	printf("%u\n"  , asjb03id03hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03ih03.m2);
	printf("%u\n"  , asjb03id03ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03ih13.m2);
	printf("%u\n"  , asjb03id03ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03hw00.m2);
	printf("%lu\n" , asjb03id03hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03iw03.m2);
	printf("%lu\n" , asjb03id03iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03iw29.m2);
	printf("%lu\n" , asjb03id03iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03hd00.m2);
	printf("%llu\n", asjb03id03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03id03.m2);
	printf("%llu\n", (unsigned long long)asjb03id03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03id61.m2);
	printf("%llu\n", (unsigned long long)asjb03id03id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03id03hs00.m2);
	printf("%u\n"  , asjb03id03hs00.m3.m1);
	printf("\n");

	return 0;
}
