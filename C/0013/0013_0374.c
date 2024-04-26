#include <stdio.h>                                              

struct ASJD61JH00HB00 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned char m3;
} asjd61jh00hb00 = { 1 };

struct ASJD61JH00IB03 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned char m3:3;
} asjd61jh00ib03 = { 1 };

struct ASJD61JH00IB05 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned char m3:5;
} asjd61jh00ib05 = { 1 };

struct ASJD61JH00HH00 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned short m3;
} asjd61jh00hh00 = { 1 };

struct ASJD61JH00IH03 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned short m3:3;
} asjd61jh00ih03 = { 1 };

struct ASJD61JH00IH13 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned short m3:13;
} asjd61jh00ih13 = { 1 };

struct ASJD61JH00HW00 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned long m3;
} asjd61jh00hw00 = { 1 };

struct ASJD61JH00IW03 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned long m3:3;
} asjd61jh00iw03 = { 1 };

struct ASJD61JH00IW29 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned long m3:29;
} asjd61jh00iw29 = { 1 };

struct ASJD61JH00HD00 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned long long m3;
} asjd61jh00hd00 = { 1 };

struct ASJD61JH00ID03 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned long long m3:3;
} asjd61jh00id03 = { 1 };

struct ASJD61JH00ID61 {
	unsigned long long   :61;
	unsigned short   :0;
	unsigned long long m3:61;
} asjd61jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JH00HS00 {
	unsigned long long   :61;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjd61jh00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd61jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jh00hw00.m3);
	printf("\n");

	printf("%d\n" , asjd61jh00iw03.m3);
	printf("\n");

	printf("%d\n" , asjd61jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
