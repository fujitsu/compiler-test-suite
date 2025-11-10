
	
	
	
	

#include <stdio.h>                                              

struct ASJB03JW29HB00 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned char m3;
} asjb03jw29hb00 = { 1 };

struct ASJB03JW29IB03 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned char m3:3;
} asjb03jw29ib03 = { 1 };

struct ASJB03JW29IB05 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned char m3:5;
} asjb03jw29ib05 = { 1 };

struct ASJB03JW29HH00 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned short m3;
} asjb03jw29hh00 = { 1 };

struct ASJB03JW29IH03 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned short m3:3;
} asjb03jw29ih03 = { 1 };

struct ASJB03JW29IH13 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned short m3:13;
} asjb03jw29ih13 = { 1 };

struct ASJB03JW29HW00 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned long m3;
} asjb03jw29hw00 = { 1 };

struct ASJB03JW29IW03 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned long m3:3;
} asjb03jw29iw03 = { 1 };

struct ASJB03JW29IW29 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned long m3:29;
} asjb03jw29iw29 = { 1 };

struct ASJB03JW29HD00 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned long long m3;
} asjb03jw29hd00 = { 1 };

struct ASJB03JW29ID03 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned long long m3:3;
} asjb03jw29id03 = { 1 };

struct ASJB03JW29ID61 {
	unsigned char   :3;
	unsigned long   :29;
	unsigned long long m3:61;
} asjb03jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03JW29HS00 {
	unsigned char   :3;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjb03jw29hs00 = { { 1 } };

int lto_sub_299() {

	printf("%u\n"  , asjb03jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03jw29hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb03jw29iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb03jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjb03jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
