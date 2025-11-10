
	
	
	
	

#include <stdio.h>                                              

struct ASJH03JD00HB00 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned char m3;
} asjh03jd00hb00 = { 1 };

struct ASJH03JD00IB03 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned char m3:3;
} asjh03jd00ib03 = { 1 };

struct ASJH03JD00IB05 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned char m3:5;
} asjh03jd00ib05 = { 1 };

struct ASJH03JD00HH00 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned short m3;
} asjh03jd00hh00 = { 1 };

struct ASJH03JD00IH03 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned short m3:3;
} asjh03jd00ih03 = { 1 };

struct ASJH03JD00IH13 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned short m3:13;
} asjh03jd00ih13 = { 1 };

struct ASJH03JD00HW00 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned long m3;
} asjh03jd00hw00 = { 1 };

struct ASJH03JD00IW03 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned long m3:3;
} asjh03jd00iw03 = { 1 };

struct ASJH03JD00IW29 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned long m3:29;
} asjh03jd00iw29 = { 1 };

struct ASJH03JD00HD00 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned long long m3;
} asjh03jd00hd00 = { 1 };

struct ASJH03JD00ID03 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjh03jd00id03 = { 1 };

struct ASJH03JD00ID61 {
	unsigned short   :3;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjh03jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03JD00HS00 {
	unsigned short   :3;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjh03jd00hs00 = { { 1 } };

int lto_sub_411() {

	printf("%u\n"  , asjh03jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh03jd00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjh03jd00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjh03jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjh03jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
