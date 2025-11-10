
	
	
	
	

#include <stdio.h>                                              

struct ASJH03IH13HB00 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned char m3;
} asjh03ih13hb00 = { 1, 2 };

struct ASJH03IH13IB03 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned char m3:3;
} asjh03ih13ib03 = { 1, 2 };

struct ASJH03IH13IB05 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned char m3:5;
} asjh03ih13ib05 = { 1, 2 };

struct ASJH03IH13HH00 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned short m3;
} asjh03ih13hh00 = { 1, 2 };

struct ASJH03IH13IH03 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned short m3:3;
} asjh03ih13ih03 = { 1, 2 };

struct ASJH03IH13IH13 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned short m3:13;
} asjh03ih13ih13 = { 1, 2 };

struct ASJH03IH13HW00 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned long m3;
} asjh03ih13hw00 = { 1, 2 };

struct ASJH03IH13IW03 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned long m3:3;
} asjh03ih13iw03 = { 1, 2 };

struct ASJH03IH13IW29 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned long m3:29;
} asjh03ih13iw29 = { 1, 2 };

struct ASJH03IH13HD00 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned long long m3;
} asjh03ih13hd00 = { 1, 2 };

struct ASJH03IH13ID03 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned long long m3:3;
} asjh03ih13id03 = { 1, 2 };

struct ASJH03IH13ID61 {
	unsigned short   :3;
	unsigned short m2:13;
	unsigned long long m3:61;
} asjh03ih13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03IH13HS00 {
	unsigned short   :3;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asjh03ih13hs00 = { 1, { 2 } };

int lto_sub_405() {

	printf("%u\n"  , asjh03ih13hb00.m2);
	printf("%u\n"  , asjh03ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13ib03.m2);
	printf("%u\n"  , asjh03ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13ib05.m2);
	printf("%u\n"  , asjh03ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13hh00.m2);
	printf("%u\n"  , asjh03ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13ih03.m2);
	printf("%u\n"  , asjh03ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13ih13.m2);
	printf("%u\n"  , asjh03ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13hw00.m2);
	printf("%lu\n" , asjh03ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13iw03.m2);
	printf("%lu\n" , asjh03ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13iw29.m2);
	printf("%lu\n" , asjh03ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13hd00.m2);
	printf("%llu\n", asjh03ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13id03.m2);
	printf("%llu\n", (unsigned long long)asjh03ih13id03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13id61.m2);
	printf("%llu\n", (unsigned long long)asjh03ih13id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03ih13hs00.m2);
	printf("%u\n"  , asjh03ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
