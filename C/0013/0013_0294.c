#include <stdio.h>                                              

struct ASJB03JH00HB00 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned char m3;
} asjb03jh00hb00 = { 1 };

struct ASJB03JH00IB03 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned char m3:3;
} asjb03jh00ib03 = { 1 };

struct ASJB03JH00IB05 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned char m3:5;
} asjb03jh00ib05 = { 1 };

struct ASJB03JH00HH00 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned short m3;
} asjb03jh00hh00 = { 1 };

struct ASJB03JH00IH03 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned short m3:3;
} asjb03jh00ih03 = { 1 };

struct ASJB03JH00IH13 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned short m3:13;
} asjb03jh00ih13 = { 1 };

struct ASJB03JH00HW00 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned long m3;
} asjb03jh00hw00 = { 1 };

struct ASJB03JH00IW03 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned long m3:3;
} asjb03jh00iw03 = { 1 };

struct ASJB03JH00IW29 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned long m3:29;
} asjb03jh00iw29 = { 1 };

struct ASJB03JH00HD00 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned long long m3;
} asjb03jh00hd00 = { 1 };

struct ASJB03JH00ID03 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned long long m3:3;
} asjb03jh00id03 = { 1 };

struct ASJB03JH00ID61 {
	unsigned char   :3;
	unsigned short   :0;
	unsigned long long m3:61;
} asjb03jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03JH00HS00 {
	unsigned char   :3;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjb03jh00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb03jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03jh00hw00.m3);
	printf("\n");

	printf("%d\n" , asjb03jh00iw03.m3);
	printf("\n");

	printf("%d\n" , asjb03jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb03jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
