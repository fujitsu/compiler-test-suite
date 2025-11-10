
	
	
	
	

#include <stdio.h>                                              

struct ASJW03IH03HB00 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned char m3;
} asjw03ih03hb00 = { 1, 2 };

struct ASJW03IH03IB03 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned char m3:3;
} asjw03ih03ib03 = { 1, 2 };

struct ASJW03IH03IB05 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned char m3:5;
} asjw03ih03ib05 = { 1, 2 };

struct ASJW03IH03HH00 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned short m3;
} asjw03ih03hh00 = { 1, 2 };

struct ASJW03IH03IH03 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned short m3:3;
} asjw03ih03ih03 = { 1, 2 };

struct ASJW03IH03IH13 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned short m3:13;
} asjw03ih03ih13 = { 1, 2 };

struct ASJW03IH03HW00 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned long m3;
} asjw03ih03hw00 = { 1, 2 };

struct ASJW03IH03IW03 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned long m3:3;
} asjw03ih03iw03 = { 1, 2 };

struct ASJW03IH03IW29 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned long m3:29;
} asjw03ih03iw29 = { 1, 2 };

struct ASJW03IH03HD00 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned long long m3;
} asjw03ih03hd00 = { 1, 2 };

struct ASJW03IH03ID03 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned long long m3:3;
} asjw03ih03id03 = { 1, 2 };

struct ASJW03IH03ID61 {
	unsigned long   :3;
	unsigned short m2:3;
	unsigned long long m3:61;
} asjw03ih03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW03IH03HS00 {
	unsigned long   :3;
	unsigned short m2:3;
	struct TAGHB00 m3;
} asjw03ih03hs00 = { 1, { 2 } };

int lto_sub_464() {

	printf("%u\n"  , asjw03ih03hb00.m2);
	printf("%u\n"  , asjw03ih03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03ib03.m2);
	printf("%u\n"  , asjw03ih03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03ib05.m2);
	printf("%u\n"  , asjw03ih03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03hh00.m2);
	printf("%u\n"  , asjw03ih03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03ih03.m2);
	printf("%u\n"  , asjw03ih03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03ih13.m2);
	printf("%u\n"  , asjw03ih03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03hw00.m2);
	printf("%lu\n" , asjw03ih03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03iw03.m2);
	printf("%lu\n" , asjw03ih03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03iw29.m2);
	printf("%lu\n" , asjw03ih03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03hd00.m2);
	printf("%llu\n", asjw03ih03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03id03.m2);
	printf("%llu\n", (unsigned long long)asjw03ih03id03.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03id61.m2);
	printf("%llu\n", (unsigned long long)asjw03ih03id61.m3);
	printf("\n");

	printf("%u\n"  , asjw03ih03hs00.m2);
	printf("%u\n"  , asjw03ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
