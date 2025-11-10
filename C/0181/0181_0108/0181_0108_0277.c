
	
	
	
	

#include <stdio.h>                                              

struct ASJB00JW03HB00 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned char m3;
} asjb00jw03hb00 = { 1 };

struct ASJB00JW03IB03 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned char m3:3;
} asjb00jw03ib03 = { 1 };

struct ASJB00JW03IB05 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned char m3:5;
} asjb00jw03ib05 = { 1 };

struct ASJB00JW03HH00 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned short m3;
} asjb00jw03hh00 = { 1 };

struct ASJB00JW03IH03 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned short m3:3;
} asjb00jw03ih03 = { 1 };

struct ASJB00JW03IH13 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned short m3:13;
} asjb00jw03ih13 = { 1 };

struct ASJB00JW03HW00 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned long m3;
} asjb00jw03hw00 = { 1 };

struct ASJB00JW03IW03 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned long m3:3;
} asjb00jw03iw03 = { 1 };

struct ASJB00JW03IW29 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned long m3:29;
} asjb00jw03iw29 = { 1 };

struct ASJB00JW03HD00 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned long long m3;
} asjb00jw03hd00 = { 1 };

struct ASJB00JW03ID03 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned long long m3:3;
} asjb00jw03id03 = { 1 };

struct ASJB00JW03ID61 {
	unsigned char   :0;
	unsigned long   :3;
	unsigned long long m3:61;
} asjb00jw03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JW03HS00 {
	unsigned char   :0;
	unsigned long   :3;
	struct TAGHB00 m3;
} asjb00jw03hs00 = { { 1 } };

int lto_sub_278() {

	printf("%u\n"  , asjb00jw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jw03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb00jw03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb00jw03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jw03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jw03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jw03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
