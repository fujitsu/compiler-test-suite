
	
	
	
	

#include <stdio.h>                                              

struct ASJW29JB03HB00 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned char m3;
} asjw29jb03hb00 = { 1 };

struct ASJW29JB03IB03 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned char m3:3;
} asjw29jb03ib03 = { 1 };

struct ASJW29JB03IB05 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned char m3:5;
} asjw29jb03ib05 = { 1 };

struct ASJW29JB03HH00 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned short m3;
} asjw29jb03hh00 = { 1 };

struct ASJW29JB03IH03 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned short m3:3;
} asjw29jb03ih03 = { 1 };

struct ASJW29JB03IH13 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned short m3:13;
} asjw29jb03ih13 = { 1 };

struct ASJW29JB03HW00 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned long m3;
} asjw29jb03hw00 = { 1 };

struct ASJW29JB03IW03 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned long m3:3;
} asjw29jb03iw03 = { 1 };

struct ASJW29JB03IW29 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned long m3:29;
} asjw29jb03iw29 = { 1 };

struct ASJW29JB03HD00 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned long long m3;
} asjw29jb03hd00 = { 1 };

struct ASJW29JB03ID03 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned long long m3:3;
} asjw29jb03id03 = { 1 };

struct ASJW29JB03ID61 {
	unsigned long   :29;
	unsigned char   :3;
	unsigned long long m3:61;
} asjw29jb03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JB03HS00 {
	unsigned long   :29;
	unsigned char   :3;
	struct TAGHB00 m3;
} asjw29jb03hs00 = { { 1 } };

int lto_sub_489() {

	printf("%u\n"  , asjw29jb03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jb03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw29jb03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw29jb03iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jb03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jb03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jb03id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb03hs00.m3.m1);
	printf("\n");

	return 0;
}
