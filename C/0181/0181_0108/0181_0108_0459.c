
	
	
	
	

#include <stdio.h>                                              

struct ASJW03JH00HB00 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned char m3;
} asjw03jh00hb00 = { 1 };

struct ASJW03JH00IB03 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned char m3:3;
} asjw03jh00ib03 = { 1 };

struct ASJW03JH00IB05 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned char m3:5;
} asjw03jh00ib05 = { 1 };

struct ASJW03JH00HH00 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned short m3;
} asjw03jh00hh00 = { 1 };

struct ASJW03JH00IH03 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned short m3:3;
} asjw03jh00ih03 = { 1 };

struct ASJW03JH00IH13 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned short m3:13;
} asjw03jh00ih13 = { 1 };

struct ASJW03JH00HW00 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned long m3;
} asjw03jh00hw00 = { 1 };

struct ASJW03JH00IW03 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned long m3:3;
} asjw03jh00iw03 = { 1 };

struct ASJW03JH00IW29 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned long m3:29;
} asjw03jh00iw29 = { 1 };

struct ASJW03JH00HD00 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned long long m3;
} asjw03jh00hd00 = { 1 };

struct ASJW03JH00ID03 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned long long m3:3;
} asjw03jh00id03 = { 1 };

struct ASJW03JH00ID61 {
	unsigned long   :3;
	unsigned short   :0;
	unsigned long long m3:61;
} asjw03jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW03JH00HS00 {
	unsigned long   :3;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjw03jh00hs00 = { { 1 } };

int lto_sub_474() {

	printf("%u\n"  , asjw03jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw03jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw03jh00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw03jh00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw03jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw03jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw03jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
