
	
	
	
	

#include <stdio.h>                                              

struct ASJB03JD00HB00 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned char m3;
} asjb03jd00hb00 = { 1 };

struct ASJB03JD00IB03 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned char m3:3;
} asjb03jd00ib03 = { 1 };

struct ASJB03JD00IB05 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned char m3:5;
} asjb03jd00ib05 = { 1 };

struct ASJB03JD00HH00 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned short m3;
} asjb03jd00hh00 = { 1 };

struct ASJB03JD00IH03 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned short m3:3;
} asjb03jd00ih03 = { 1 };

struct ASJB03JD00IH13 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned short m3:13;
} asjb03jd00ih13 = { 1 };

struct ASJB03JD00HW00 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned long m3;
} asjb03jd00hw00 = { 1 };

struct ASJB03JD00IW03 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned long m3:3;
} asjb03jd00iw03 = { 1 };

struct ASJB03JD00IW29 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned long m3:29;
} asjb03jd00iw29 = { 1 };

struct ASJB03JD00HD00 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned long long m3;
} asjb03jd00hd00 = { 1 };

struct ASJB03JD00ID03 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjb03jd00id03 = { 1 };

struct ASJB03JD00ID61 {
	unsigned char   :3;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjb03jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03JD00HS00 {
	unsigned char   :3;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjb03jd00hs00 = { { 1 } };

int lto_sub_291() {

	printf("%u\n"  , asjb03jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03jd00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb03jd00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb03jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb03jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
