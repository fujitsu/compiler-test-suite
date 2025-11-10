
	
	
	
	

#include <stdio.h>                                              

struct ASJB00JD00HB00 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned char m3;
} asjb00jd00hb00 = { 1 };

struct ASJB00JD00IB03 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned char m3:3;
} asjb00jd00ib03 = { 1 };

struct ASJB00JD00IB05 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned char m3:5;
} asjb00jd00ib05 = { 1 };

struct ASJB00JD00HH00 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned short m3;
} asjb00jd00hh00 = { 1 };

struct ASJB00JD00IH03 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned short m3:3;
} asjb00jd00ih03 = { 1 };

struct ASJB00JD00IH13 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned short m3:13;
} asjb00jd00ih13 = { 1 };

struct ASJB00JD00HW00 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned long m3;
} asjb00jd00hw00 = { 1 };

struct ASJB00JD00IW03 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned long m3:3;
} asjb00jd00iw03 = { 1 };

struct ASJB00JD00IW29 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned long m3:29;
} asjb00jd00iw29 = { 1 };

struct ASJB00JD00HD00 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned long long m3;
} asjb00jd00hd00 = { 1 };

struct ASJB00JD00ID03 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjb00jd00id03 = { 1 };

struct ASJB00JD00ID61 {
	unsigned char   :0;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjb00jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JD00HS00 {
	unsigned char   :0;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjb00jd00hs00 = { { 1 } };

int lto_sub_271() {

	printf("%u\n"  , asjb00jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jd00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb00jd00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb00jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
