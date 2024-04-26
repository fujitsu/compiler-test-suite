#include <stdio.h>                                              

struct ASIW29JD00HB00 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned char m3;
} asiw29jd00hb00 = { 1, 2 };

struct ASIW29JD00IB03 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned char m3:3;
} asiw29jd00ib03 = { 1, 2 };

struct ASIW29JD00IB05 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned char m3:5;
} asiw29jd00ib05 = { 1, 2 };

struct ASIW29JD00HH00 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned short m3;
} asiw29jd00hh00 = { 1, 2 };

struct ASIW29JD00IH03 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned short m3:3;
} asiw29jd00ih03 = { 1, 2 };

struct ASIW29JD00IH13 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned short m3:13;
} asiw29jd00ih13 = { 1, 2 };

struct ASIW29JD00HW00 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned long m3;
} asiw29jd00hw00 = { 1, 2 };

struct ASIW29JD00IW03 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned long m3:3;
} asiw29jd00iw03 = { 1, 2 };

struct ASIW29JD00IW29 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned long m3:29;
} asiw29jd00iw29 = { 1, 2 };

struct ASIW29JD00HD00 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned long long m3;
} asiw29jd00hd00 = { 1, 2 };

struct ASIW29JD00ID03 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned long long m3:3;
} asiw29jd00id03 = { 1, 2 };

struct ASIW29JD00ID61 {
	unsigned long m1:29;
	unsigned long long   :0;
	unsigned long long m3:61;
} asiw29jd00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29JD00HS00 {
	unsigned long m1:29;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asiw29jd00hs00 = { 1, { 2 } };

int main() {

	printf("%d\n" , asiw29jd00hb00.m1);
	printf("%u\n"  , asiw29jd00hb00.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00ib03.m1);
	printf("%u\n"  , asiw29jd00ib03.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00ib05.m1);
	printf("%u\n"  , asiw29jd00ib05.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00hh00.m1);
	printf("%u\n"  , asiw29jd00hh00.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00ih03.m1);
	printf("%u\n"  , asiw29jd00ih03.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00ih13.m1);
	printf("%u\n"  , asiw29jd00ih13.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00hw00.m1);
	printf("%lu\n" , asiw29jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00iw03.m1);
	printf("%d\n" , asiw29jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00iw29.m1);
	printf("%d\n" , asiw29jd00iw29.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00hd00.m1);
	printf("%llu\n", asiw29jd00hd00.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00id03.m1);
	printf("%llu\n", (unsigned long long)asiw29jd00id03.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00id61.m1);
	printf("%llu\n", (unsigned long long)asiw29jd00id61.m3);
	printf("\n");

	printf("%d\n" , asiw29jd00hs00.m1);
	printf("%u\n"  , asiw29jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
