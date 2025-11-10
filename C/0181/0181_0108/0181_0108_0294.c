
	
	
	
	

#include <stdio.h>                                              

struct ASJB03JH03HB00 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned char m3;
} asjb03jh03hb00 = { 1 };

struct ASJB03JH03IB03 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned char m3:3;
} asjb03jh03ib03 = { 1 };

struct ASJB03JH03IB05 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned char m3:5;
} asjb03jh03ib05 = { 1 };

struct ASJB03JH03HH00 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned short m3;
} asjb03jh03hh00 = { 1 };

struct ASJB03JH03IH03 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned short m3:3;
} asjb03jh03ih03 = { 1 };

struct ASJB03JH03IH13 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned short m3:13;
} asjb03jh03ih13 = { 1 };

struct ASJB03JH03HW00 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned long m3;
} asjb03jh03hw00 = { 1 };

struct ASJB03JH03IW03 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned long m3:3;
} asjb03jh03iw03 = { 1 };

struct ASJB03JH03IW29 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned long m3:29;
} asjb03jh03iw29 = { 1 };

struct ASJB03JH03HD00 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned long long m3;
} asjb03jh03hd00 = { 1 };

struct ASJB03JH03ID03 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned long long m3:3;
} asjb03jh03id03 = { 1 };

struct ASJB03JH03ID61 {
	unsigned char   :3;
	unsigned short   :3;
	unsigned long long m3:61;
} asjb03jh03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03JH03HS00 {
	unsigned char   :3;
	unsigned short   :3;
	struct TAGHB00 m3;
} asjb03jh03hs00 = { { 1 } };

int lto_sub_295() {

	printf("%u\n"  , asjb03jh03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03jh03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb03jh03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb03jh03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb03jh03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jh03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jh03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb03jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
