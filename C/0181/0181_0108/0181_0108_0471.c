
	
	
	
	

#include <stdio.h>                                              

struct ASJW29IW03HB00 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned char m3;
} asjw29iw03hb00 = { 1, 2 };

struct ASJW29IW03IB03 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned char m3:3;
} asjw29iw03ib03 = { 1, 2 };

struct ASJW29IW03IB05 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned char m3:5;
} asjw29iw03ib05 = { 1, 2 };

struct ASJW29IW03HH00 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned short m3;
} asjw29iw03hh00 = { 1, 2 };

struct ASJW29IW03IH03 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned short m3:3;
} asjw29iw03ih03 = { 1, 2 };

struct ASJW29IW03IH13 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned short m3:13;
} asjw29iw03ih13 = { 1, 2 };

struct ASJW29IW03HW00 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long m3;
} asjw29iw03hw00 = { 1, 2 };

struct ASJW29IW03IW03 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long m3:3;
} asjw29iw03iw03 = { 1, 2 };

struct ASJW29IW03IW29 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long m3:29;
} asjw29iw03iw29 = { 1, 2 };

struct ASJW29IW03HD00 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long long m3;
} asjw29iw03hd00 = { 1, 2 };

struct ASJW29IW03ID03 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long long m3:3;
} asjw29iw03id03 = { 1, 2 };

struct ASJW29IW03ID61 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long long m3:61;
} asjw29iw03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29IW03HS00 {
	unsigned long   :29;
	unsigned long m2:3;
	struct TAGHB00 m3;
} asjw29iw03hs00 = { 1, { 2 } };

int lto_sub_486() {

	printf("%lu\n" , asjw29iw03hb00.m2);
	printf("%u\n"  , asjw29iw03hb00.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03ib03.m2);
	printf("%u\n"  , asjw29iw03ib03.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03ib05.m2);
	printf("%u\n"  , asjw29iw03ib05.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03hh00.m2);
	printf("%u\n"  , asjw29iw03hh00.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03ih03.m2);
	printf("%u\n"  , asjw29iw03ih03.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03ih13.m2);
	printf("%u\n"  , asjw29iw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03hw00.m2);
	printf("%lu\n" , asjw29iw03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03iw03.m2);
	printf("%lu\n" , asjw29iw03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03iw29.m2);
	printf("%lu\n" , asjw29iw03iw29.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03hd00.m2);
	printf("%llu\n", asjw29iw03hd00.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03id03.m2);
	printf("%llu\n", (unsigned long long)asjw29iw03id03.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03id61.m2);
	printf("%llu\n", (unsigned long long)asjw29iw03id61.m3);
	printf("\n");

	printf("%lu\n" , asjw29iw03hs00.m2);
	printf("%u\n"  , asjw29iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
