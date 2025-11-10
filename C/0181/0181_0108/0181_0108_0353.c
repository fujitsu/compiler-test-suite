
	
	
	
	

#include <stdio.h>                                              

struct ASJD03JH00HB00 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned char m3;
} asjd03jh00hb00 = { 1 };

struct ASJD03JH00IB03 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned char m3:3;
} asjd03jh00ib03 = { 1 };

struct ASJD03JH00IB05 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned char m3:5;
} asjd03jh00ib05 = { 1 };

struct ASJD03JH00HH00 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned short m3;
} asjd03jh00hh00 = { 1 };

struct ASJD03JH00IH03 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned short m3:3;
} asjd03jh00ih03 = { 1 };

struct ASJD03JH00IH13 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned short m3:13;
} asjd03jh00ih13 = { 1 };

struct ASJD03JH00HW00 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned long m3;
} asjd03jh00hw00 = { 1 };

struct ASJD03JH00IW03 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned long m3:3;
} asjd03jh00iw03 = { 1 };

struct ASJD03JH00IW29 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned long m3:29;
} asjd03jh00iw29 = { 1 };

struct ASJD03JH00HD00 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned long long m3;
} asjd03jh00hd00 = { 1 };

struct ASJD03JH00ID03 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned long long m3:3;
} asjd03jh00id03 = { 1 };

struct ASJD03JH00ID61 {
	unsigned long long   :3;
	unsigned short   :0;
	unsigned long long m3:61;
} asjd03jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03JH00HS00 {
	unsigned long long   :3;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjd03jh00hs00 = { { 1 } };

int lto_sub_354() {

	printf("%u\n"  , asjd03jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd03jh00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjd03jh00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjd03jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjd03jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
