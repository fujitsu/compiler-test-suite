#include <stdio.h>                                              

struct ASJH03JH00HB00 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned char m3;
} asjh03jh00hb00 = { 1 };

struct ASJH03JH00IB03 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned char m3:3;
} asjh03jh00ib03 = { 1 };

struct ASJH03JH00IB05 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned char m3:5;
} asjh03jh00ib05 = { 1 };

struct ASJH03JH00HH00 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned short m3;
} asjh03jh00hh00 = { 1 };

struct ASJH03JH00IH03 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned short m3:3;
} asjh03jh00ih03 = { 1 };

struct ASJH03JH00IH13 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned short m3:13;
} asjh03jh00ih13 = { 1 };

struct ASJH03JH00HW00 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned long m3;
} asjh03jh00hw00 = { 1 };

struct ASJH03JH00IW03 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned long m3:3;
} asjh03jh00iw03 = { 1 };

struct ASJH03JH00IW29 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned long m3:29;
} asjh03jh00iw29 = { 1 };

struct ASJH03JH00HD00 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned long long m3;
} asjh03jh00hd00 = { 1 };

struct ASJH03JH00ID03 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned long long m3:3;
} asjh03jh00id03 = { 1 };

struct ASJH03JH00ID61 {
	unsigned short   :3;
	unsigned short   :0;
	unsigned long long m3:61;
} asjh03jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03JH00HS00 {
	unsigned short   :3;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjh03jh00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh03jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh03jh00hw00.m3);
	printf("\n");

	printf("%d\n" , asjh03jh00iw03.m3);
	printf("\n");

	printf("%d\n" , asjh03jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjh03jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
