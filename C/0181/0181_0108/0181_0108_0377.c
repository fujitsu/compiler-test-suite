
	
	
	
	

#include <stdio.h>                                              

struct ASJD61JW03HB00 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned char m3;
} asjd61jw03hb00 = { 1 };

struct ASJD61JW03IB03 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned char m3:3;
} asjd61jw03ib03 = { 1 };

struct ASJD61JW03IB05 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned char m3:5;
} asjd61jw03ib05 = { 1 };

struct ASJD61JW03HH00 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned short m3;
} asjd61jw03hh00 = { 1 };

struct ASJD61JW03IH03 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned short m3:3;
} asjd61jw03ih03 = { 1 };

struct ASJD61JW03IH13 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned short m3:13;
} asjd61jw03ih13 = { 1 };

struct ASJD61JW03HW00 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned long m3;
} asjd61jw03hw00 = { 1 };

struct ASJD61JW03IW03 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned long m3:3;
} asjd61jw03iw03 = { 1 };

struct ASJD61JW03IW29 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned long m3:29;
} asjd61jw03iw29 = { 1 };

struct ASJD61JW03HD00 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned long long m3;
} asjd61jw03hd00 = { 1 };

struct ASJD61JW03ID03 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned long long m3:3;
} asjd61jw03id03 = { 1 };

struct ASJD61JW03ID61 {
	unsigned long long   :61;
	unsigned long   :3;
	unsigned long long m3:61;
} asjd61jw03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JW03HS00 {
	unsigned long long   :61;
	unsigned long   :3;
	struct TAGHB00 m3;
} asjd61jw03hs00 = { { 1 } };

int lto_sub_378() {

	printf("%u\n"  , asjd61jw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jw03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjd61jw03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjd61jw03iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jw03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jw03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jw03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
