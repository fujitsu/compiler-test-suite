                                                            
#include <stdio.h>                                              

struct JSHB00IB03HB00 {
	unsigned char m1;
	unsigned char m2:3;
	unsigned char m3;
};

struct JSHB00IB03IB03 {
	unsigned char m1;
	unsigned char m2:3;
	unsigned char m3:3;
};

struct JSHB00IB03IB05 {
	unsigned char m1;
	unsigned char m2:3;
	unsigned char m3:5;
};

union JUHB00JB03 {
	unsigned char m1;
	unsigned char   :3;
};

union JUHB00JB05 {
	unsigned char m1;
	unsigned char   :5;
};

union JUHB00JB00 {
	unsigned char m1;
	unsigned char   :0;
};

static struct JSHB00IB03HB00 jshb00ib03hb00 = { 1, 2, 3 };

static union JUHB00JB03 juhb00jb03 = { 1 };

int lto_sub_673() {

	       struct JSHB00IB03IB03 jshb00ib03ib03 = { 1, 2, 3 };
	static struct JSHB00IB03IB05 jshb00ib03ib05 = { 1, 2, 3 };

	       union JUHB00JB05 juhb00jb05 = { 1 };
	static union JUHB00JB00 juhb00jb00 = { 1 };

	printf("%u\n"  , jshb00ib03hb00.m1);
	printf("%u\n"  , jshb00ib03hb00.m2);
	printf("%u\n"  , jshb00ib03hb00.m3);
	printf("\n");

	printf("%u\n"  , jshb00ib03ib03.m1);
	printf("%u\n"  , jshb00ib03ib03.m2);
	printf("%u\n"  , jshb00ib03ib03.m3);
	printf("\n");

	printf("%u\n"  , jshb00ib03ib05.m1);
	printf("%u\n"  , jshb00ib03ib05.m2);
	printf("%u\n"  , jshb00ib03ib05.m3);
	printf("\n");

	printf("%u\n"  , juhb00jb03.m1);
	printf("\n");

	printf("%u\n"  , juhb00jb05.m1);
	printf("\n");

	printf("%u\n"  , juhb00jb00.m1);
	printf("\n");

	return 0;
}
