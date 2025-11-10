
	
	
	
	

#include <stdio.h>                                              

struct ASJB03JW00HB00 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned char m3;
} asjb03jw00hb00 = { 1 };

struct ASJB03JW00IB03 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned char m3:3;
} asjb03jw00ib03 = { 1 };

struct ASJB03JW00IB05 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned char m3:5;
} asjb03jw00ib05 = { 1 };

struct ASJB03JW00HH00 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned short m3;
} asjb03jw00hh00 = { 1 };

struct ASJB03JW00IH03 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned short m3:3;
} asjb03jw00ih03 = { 1 };

struct ASJB03JW00IH13 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned short m3:13;
} asjb03jw00ih13 = { 1 };

struct ASJB03JW00HW00 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned long m3;
} asjb03jw00hw00 = { 1 };

struct ASJB03JW00IW03 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned long m3:3;
} asjb03jw00iw03 = { 1 };

struct ASJB03JW00IW29 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned long m3:29;
} asjb03jw00iw29 = { 1 };

struct ASJB03JW00HD00 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned long long m3;
} asjb03jw00hd00 = { 1 };

struct ASJB03JW00ID03 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned long long m3:3;
} asjb03jw00id03 = { 1 };

struct ASJB03JW00ID61 {
	unsigned char   :3;
	unsigned long   :0;
	unsigned long long m3:61;
} asjb03jw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03JW00HS00 {
	unsigned char   :3;
	unsigned long   :0;
	struct TAGHB00 m3;
} asjb03jw00hs00 = { { 1 } };

int lto_sub_297() {

	printf("%u\n"  , asjb03jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03jw00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb03jw00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb03jw00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb03jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb03jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
