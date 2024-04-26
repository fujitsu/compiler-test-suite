#include <stdio.h>                                              

struct ASJH03JW29HB00 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned char m3;
} asjh03jw29hb00 = { 1 };

struct ASJH03JW29IB03 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned char m3:3;
} asjh03jw29ib03 = { 1 };

struct ASJH03JW29IB05 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned char m3:5;
} asjh03jw29ib05 = { 1 };

struct ASJH03JW29HH00 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned short m3;
} asjh03jw29hh00 = { 1 };

struct ASJH03JW29IH03 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned short m3:3;
} asjh03jw29ih03 = { 1 };

struct ASJH03JW29IH13 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned short m3:13;
} asjh03jw29ih13 = { 1 };

struct ASJH03JW29HW00 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned long m3;
} asjh03jw29hw00 = { 1 };

struct ASJH03JW29IW03 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned long m3:3;
} asjh03jw29iw03 = { 1 };

struct ASJH03JW29IW29 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned long m3:29;
} asjh03jw29iw29 = { 1 };

struct ASJH03JW29HD00 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned long long m3;
} asjh03jw29hd00 = { 1 };

struct ASJH03JW29ID03 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned long long m3:3;
} asjh03jw29id03 = { 1 };

struct ASJH03JW29ID61 {
	unsigned short   :3;
	unsigned long   :29;
	unsigned long long m3:61;
} asjh03jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03JW29HS00 {
	unsigned short   :3;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjh03jw29hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh03jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh03jw29hw00.m3);
	printf("\n");

	printf("%d\n" , asjh03jw29iw03.m3);
	printf("\n");

	printf("%d\n" , asjh03jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjh03jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
