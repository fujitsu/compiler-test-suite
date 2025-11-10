
	
	
	
	

#include <stdio.h>                                              

struct ASJB00IW03HB00 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned char m3;
} asjb00iw03hb00 = { 1, 2 };

struct ASJB00IW03IB03 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned char m3:3;
} asjb00iw03ib03 = { 1, 2 };

struct ASJB00IW03IB05 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned char m3:5;
} asjb00iw03ib05 = { 1, 2 };

struct ASJB00IW03HH00 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned short m3;
} asjb00iw03hh00 = { 1, 2 };

struct ASJB00IW03IH03 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned short m3:3;
} asjb00iw03ih03 = { 1, 2 };

struct ASJB00IW03IH13 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned short m3:13;
} asjb00iw03ih13 = { 1, 2 };

struct ASJB00IW03HW00 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned long m3;
} asjb00iw03hw00 = { 1, 2 };

struct ASJB00IW03IW03 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned long m3:3;
} asjb00iw03iw03 = { 1, 2 };

struct ASJB00IW03IW29 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned long m3:29;
} asjb00iw03iw29 = { 1, 2 };

struct ASJB00IW03HD00 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned long long m3;
} asjb00iw03hd00 = { 1, 2 };

struct ASJB00IW03ID03 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned long long m3:3;
} asjb00iw03id03 = { 1, 2 };

struct ASJB00IW03ID61 {
	unsigned char   :0;
	unsigned long m2:3;
	unsigned long long m3:61;
} asjb00iw03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00IW03HS00 {
	unsigned char   :0;
	unsigned long m2:3;
	struct TAGHB00 m3;
} asjb00iw03hs00 = { 1, { 2 } };

int lto_sub_266() {

	printf("%lu\n" , asjb00iw03hb00.m2);
	printf("%u\n"  , asjb00iw03hb00.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03ib03.m2);
	printf("%u\n"  , asjb00iw03ib03.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03ib05.m2);
	printf("%u\n"  , asjb00iw03ib05.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03hh00.m2);
	printf("%u\n"  , asjb00iw03hh00.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03ih03.m2);
	printf("%u\n"  , asjb00iw03ih03.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03ih13.m2);
	printf("%u\n"  , asjb00iw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03hw00.m2);
	printf("%lu\n" , asjb00iw03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03iw03.m2);
	printf("%lu\n" , asjb00iw03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03iw29.m2);
	printf("%lu\n" , asjb00iw03iw29.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03hd00.m2);
	printf("%llu\n", asjb00iw03hd00.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03id03.m2);
	printf("%llu\n", (unsigned long long)asjb00iw03id03.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03id61.m2);
	printf("%llu\n", (unsigned long long)asjb00iw03id61.m3);
	printf("\n");

	printf("%lu\n" , asjb00iw03hs00.m2);
	printf("%u\n"  , asjb00iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
