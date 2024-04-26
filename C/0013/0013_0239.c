#include <stdio.h>                                              

struct ASIW03JW29HB00 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned char m3;
} asiw03jw29hb00 = { 1, 2 };

struct ASIW03JW29IB03 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned char m3:3;
} asiw03jw29ib03 = { 1, 2 };

struct ASIW03JW29IB05 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned char m3:5;
} asiw03jw29ib05 = { 1, 2 };

struct ASIW03JW29HH00 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned short m3;
} asiw03jw29hh00 = { 1, 2 };

struct ASIW03JW29IH03 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned short m3:3;
} asiw03jw29ih03 = { 1, 2 };

struct ASIW03JW29IH13 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned short m3:13;
} asiw03jw29ih13 = { 1, 2 };

struct ASIW03JW29HW00 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned long m3;
} asiw03jw29hw00 = { 1, 2 };

struct ASIW03JW29IW03 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned long m3:3;
} asiw03jw29iw03 = { 1, 2 };

struct ASIW03JW29IW29 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned long m3:29;
} asiw03jw29iw29 = { 1, 2 };

struct ASIW03JW29HD00 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned long long m3;
} asiw03jw29hd00 = { 1, 2 };

struct ASIW03JW29ID03 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned long long m3:3;
} asiw03jw29id03 = { 1, 2 };

struct ASIW03JW29ID61 {
	unsigned long m1:3;
	unsigned long   :29;
	unsigned long long m3:61;
} asiw03jw29id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW03JW29HS00 {
	unsigned long m1:3;
	unsigned long   :29;
	struct TAGHB00 m3;
} asiw03jw29hs00 = { 1, { 2 } };

int main() {

	printf("%d\n" , asiw03jw29hb00.m1);
	printf("%u\n"  , asiw03jw29hb00.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29ib03.m1);
	printf("%u\n"  , asiw03jw29ib03.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29ib05.m1);
	printf("%u\n"  , asiw03jw29ib05.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29hh00.m1);
	printf("%u\n"  , asiw03jw29hh00.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29ih03.m1);
	printf("%u\n"  , asiw03jw29ih03.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29ih13.m1);
	printf("%u\n"  , asiw03jw29ih13.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29hw00.m1);
	printf("%lu\n" , asiw03jw29hw00.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29iw03.m1);
	printf("%d\n" , asiw03jw29iw03.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29iw29.m1);
	printf("%d\n" , asiw03jw29iw29.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29hd00.m1);
	printf("%llu\n", asiw03jw29hd00.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29id03.m1);
	printf("%llu\n", (unsigned long long)asiw03jw29id03.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29id61.m1);
	printf("%llu\n", (unsigned long long)asiw03jw29id61.m3);
	printf("\n");

	printf("%d\n" , asiw03jw29hs00.m1);
	printf("%u\n"  , asiw03jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
