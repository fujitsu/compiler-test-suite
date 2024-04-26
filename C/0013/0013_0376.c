#include <stdio.h>                                              

struct ASJD61JH13HB00 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned char m3;
} asjd61jh13hb00 = { 1 };

struct ASJD61JH13IB03 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned char m3:3;
} asjd61jh13ib03 = { 1 };

struct ASJD61JH13IB05 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned char m3:5;
} asjd61jh13ib05 = { 1 };

struct ASJD61JH13HH00 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned short m3;
} asjd61jh13hh00 = { 1 };

struct ASJD61JH13IH03 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned short m3:3;
} asjd61jh13ih03 = { 1 };

struct ASJD61JH13IH13 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned short m3:13;
} asjd61jh13ih13 = { 1 };

struct ASJD61JH13HW00 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned long m3;
} asjd61jh13hw00 = { 1 };

struct ASJD61JH13IW03 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned long m3:3;
} asjd61jh13iw03 = { 1 };

struct ASJD61JH13IW29 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned long m3:29;
} asjd61jh13iw29 = { 1 };

struct ASJD61JH13HD00 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned long long m3;
} asjd61jh13hd00 = { 1 };

struct ASJD61JH13ID03 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned long long m3:3;
} asjd61jh13id03 = { 1 };

struct ASJD61JH13ID61 {
	unsigned long long   :61;
	unsigned short   :13;
	unsigned long long m3:61;
} asjd61jh13id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JH13HS00 {
	unsigned long long   :61;
	unsigned short   :13;
	struct TAGHB00 m3;
} asjd61jh13hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd61jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh13ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jh13hw00.m3);
	printf("\n");

	printf("%d\n" , asjd61jh13iw03.m3);
	printf("\n");

	printf("%d\n" , asjd61jh13iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jh13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jh13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
