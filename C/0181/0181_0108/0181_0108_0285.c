
	
	
	
	

#include <stdio.h>                                              

struct ASJB03IW03HB00 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned char m3;
} asjb03iw03hb00 = { 1, 2 };

struct ASJB03IW03IB03 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned char m3:3;
} asjb03iw03ib03 = { 1, 2 };

struct ASJB03IW03IB05 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned char m3:5;
} asjb03iw03ib05 = { 1, 2 };

struct ASJB03IW03HH00 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned short m3;
} asjb03iw03hh00 = { 1, 2 };

struct ASJB03IW03IH03 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned short m3:3;
} asjb03iw03ih03 = { 1, 2 };

struct ASJB03IW03IH13 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned short m3:13;
} asjb03iw03ih13 = { 1, 2 };

struct ASJB03IW03HW00 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned long m3;
} asjb03iw03hw00 = { 1, 2 };

struct ASJB03IW03IW03 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned long m3:3;
} asjb03iw03iw03 = { 1, 2 };

struct ASJB03IW03IW29 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned long m3:29;
} asjb03iw03iw29 = { 1, 2 };

struct ASJB03IW03HD00 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned long long m3;
} asjb03iw03hd00 = { 1, 2 };

struct ASJB03IW03ID03 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned long long m3:3;
} asjb03iw03id03 = { 1, 2 };

struct ASJB03IW03ID61 {
	unsigned char   :3;
	unsigned long m2:3;
	unsigned long long m3:61;
} asjb03iw03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03IW03HS00 {
	unsigned char   :3;
	unsigned long m2:3;
	struct TAGHB00 m3;
} asjb03iw03hs00 = { 1, { 2 } };

int lto_sub_286() {

	printf("%lu\n" , asjb03iw03hb00.m2);
	printf("%u\n"  , asjb03iw03hb00.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03ib03.m2);
	printf("%u\n"  , asjb03iw03ib03.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03ib05.m2);
	printf("%u\n"  , asjb03iw03ib05.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03hh00.m2);
	printf("%u\n"  , asjb03iw03hh00.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03ih03.m2);
	printf("%u\n"  , asjb03iw03ih03.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03ih13.m2);
	printf("%u\n"  , asjb03iw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03hw00.m2);
	printf("%lu\n" , asjb03iw03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03iw03.m2);
	printf("%lu\n" , asjb03iw03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03iw29.m2);
	printf("%lu\n" , asjb03iw03iw29.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03hd00.m2);
	printf("%llu\n", asjb03iw03hd00.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03id03.m2);
	printf("%llu\n", (unsigned long long)asjb03iw03id03.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03id61.m2);
	printf("%llu\n", (unsigned long long)asjb03iw03id61.m3);
	printf("\n");

	printf("%lu\n" , asjb03iw03hs00.m2);
	printf("%u\n"  , asjb03iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
