
	
	
	
	

#include <stdio.h>                                              

struct ASJD61JH03HB00 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned char m3;
} asjd61jh03hb00 = { 1 };

struct ASJD61JH03IB03 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned char m3:3;
} asjd61jh03ib03 = { 1 };

struct ASJD61JH03IB05 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned char m3:5;
} asjd61jh03ib05 = { 1 };

struct ASJD61JH03HH00 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned short m3;
} asjd61jh03hh00 = { 1 };

struct ASJD61JH03IH03 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned short m3:3;
} asjd61jh03ih03 = { 1 };

struct ASJD61JH03IH13 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned short m3:13;
} asjd61jh03ih13 = { 1 };

struct ASJD61JH03HW00 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned long m3;
} asjd61jh03hw00 = { 1 };

struct ASJD61JH03IW03 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned long m3:3;
} asjd61jh03iw03 = { 1 };

struct ASJD61JH03IW29 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned long m3:29;
} asjd61jh03iw29 = { 1 };

struct ASJD61JH03HD00 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned long long m3;
} asjd61jh03hd00 = { 1 };

struct ASJD61JH03ID03 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned long long m3:3;
} asjd61jh03id03 = { 1 };

struct ASJD61JH03ID61 {
	unsigned long long   :61;
	unsigned short   :3;
	unsigned long long m3:61;
} asjd61jh03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JH03HS00 {
	unsigned long long   :61;
	unsigned short   :3;
	struct TAGHB00 m3;
} asjd61jh03hs00 = { { 1 } };

int lto_sub_375() {

	printf("%u\n"  , asjd61jh03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jh03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjd61jh03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjd61jh03iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jh03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jh03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jh03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
