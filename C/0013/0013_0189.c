#include <stdio.h>                                              

struct ASIH03JB03HB00 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned char m3;
} asih03jb03hb00 = { 1, 2 };

struct ASIH03JB03IB03 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned char m3:3;
} asih03jb03ib03 = { 1, 2 };

struct ASIH03JB03IB05 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned char m3:5;
} asih03jb03ib05 = { 1, 2 };

struct ASIH03JB03HH00 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned short m3;
} asih03jb03hh00 = { 1, 2 };

struct ASIH03JB03IH03 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned short m3:3;
} asih03jb03ih03 = { 1, 2 };

struct ASIH03JB03IH13 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned short m3:13;
} asih03jb03ih13 = { 1, 2 };

struct ASIH03JB03HW00 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned long m3;
} asih03jb03hw00 = { 1, 2 };

struct ASIH03JB03IW03 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned long m3:3;
} asih03jb03iw03 = { 1, 2 };

struct ASIH03JB03IW29 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned long m3:29;
} asih03jb03iw29 = { 1, 2 };

struct ASIH03JB03HD00 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned long long m3;
} asih03jb03hd00 = { 1, 2 };

struct ASIH03JB03ID03 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned long long m3:3;
} asih03jb03id03 = { 1, 2 };

struct ASIH03JB03ID61 {
	unsigned short m1:3;
	unsigned char   :3;
	unsigned long long m3:61;
} asih03jb03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH03JB03HS00 {
	unsigned short m1:3;
	unsigned char   :3;
	struct TAGHB00 m3;
} asih03jb03hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asih03jb03hb00.m1);
	printf("%u\n"  , asih03jb03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03ib03.m1);
	printf("%u\n"  , asih03jb03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03ib05.m1);
	printf("%u\n"  , asih03jb03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03hh00.m1);
	printf("%u\n"  , asih03jb03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03ih03.m1);
	printf("%u\n"  , asih03jb03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03ih13.m1);
	printf("%u\n"  , asih03jb03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03hw00.m1);
	printf("%lu\n" , asih03jb03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03iw03.m1);
	printf("%d\n" , asih03jb03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03iw29.m1);
	printf("%d\n" , asih03jb03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03hd00.m1);
	printf("%llu\n", asih03jb03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03id03.m1);
	printf("%llu\n", (unsigned long long)asih03jb03id03.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03id61.m1);
	printf("%llu\n", (unsigned long long)asih03jb03id61.m3);
	printf("\n");

	printf("%u\n"  , asih03jb03hs00.m1);
	printf("%u\n"  , asih03jb03hs00.m3.m1);
	printf("\n");

	return 0;
}
