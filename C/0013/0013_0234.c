#include <stdio.h>                                              

struct ASIW03JH00HB00 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned char m3;
} asiw03jh00hb00 = { 1, 2 };

struct ASIW03JH00IB03 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned char m3:3;
} asiw03jh00ib03 = { 1, 2 };

struct ASIW03JH00IB05 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned char m3:5;
} asiw03jh00ib05 = { 1, 2 };

struct ASIW03JH00HH00 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned short m3;
} asiw03jh00hh00 = { 1, 2 };

struct ASIW03JH00IH03 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned short m3:3;
} asiw03jh00ih03 = { 1, 2 };

struct ASIW03JH00IH13 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned short m3:13;
} asiw03jh00ih13 = { 1, 2 };

struct ASIW03JH00HW00 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned long m3;
} asiw03jh00hw00 = { 1, 2 };

struct ASIW03JH00IW03 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned long m3:3;
} asiw03jh00iw03 = { 1, 2 };

struct ASIW03JH00IW29 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned long m3:29;
} asiw03jh00iw29 = { 1, 2 };

struct ASIW03JH00HD00 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned long long m3;
} asiw03jh00hd00 = { 1, 2 };

struct ASIW03JH00ID03 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned long long m3:3;
} asiw03jh00id03 = { 1, 2 };

struct ASIW03JH00ID61 {
	unsigned long m1:3;
	unsigned short   :0;
	unsigned long long m3:61;
} asiw03jh00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW03JH00HS00 {
	unsigned long m1:3;
	unsigned short   :0;
	struct TAGHB00 m3;
} asiw03jh00hs00 = { 1, { 2 } };

int main() {

	printf("%d\n" , asiw03jh00hb00.m1);
	printf("%u\n"  , asiw03jh00hb00.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00ib03.m1);
	printf("%u\n"  , asiw03jh00ib03.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00ib05.m1);
	printf("%u\n"  , asiw03jh00ib05.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00hh00.m1);
	printf("%u\n"  , asiw03jh00hh00.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00ih03.m1);
	printf("%u\n"  , asiw03jh00ih03.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00ih13.m1);
	printf("%u\n"  , asiw03jh00ih13.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00hw00.m1);
	printf("%lu\n" , asiw03jh00hw00.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00iw03.m1);
	printf("%d\n" , asiw03jh00iw03.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00iw29.m1);
	printf("%d\n" , asiw03jh00iw29.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00hd00.m1);
	printf("%llu\n", asiw03jh00hd00.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00id03.m1);
	printf("%llu\n", (unsigned long long)asiw03jh00id03.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00id61.m1);
	printf("%llu\n", (unsigned long long)asiw03jh00id61.m3);
	printf("\n");

	printf("%d\n" , asiw03jh00hs00.m1);
	printf("%u\n"  , asiw03jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
