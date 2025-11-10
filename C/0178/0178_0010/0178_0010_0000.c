#include <stdio.h>
#include"004.h"

float *var002 = (float[]){[0 ... 5] = 111.1, [2 ... 9] = 222.2};
extern long *var003;
int x = 5;
int *var004 = (int *){&x}; 
static int *var005 = (int[10]){[5 ... 9] = 100};
extern const int *var006;
extern enum e{ e1=1, e2, e3 } var007;
static long long int *var010 = (long long int[]){[0 ... 4] = 1, [6 ... 9] = 2};
extern char *var012;
int *var013 = (int[10]){[0 ... 8] = 100};

void test_add001(){
	const int *var001 = (const int[10]){[0 ... 5] = 100};
	ichck(1, 100, var001[0], "compound literal add No.1 NG\n");
	ichck(1, 100, var001[5], "compound literal add No.1 NG\n");
}

void test_add002(){
	fchck(2, 111.1, var002[0], 0.0, "compound literal add No.2 NG\n");
	fchck(2, 222.2, var002[5], 0.0, "compound literal add No.2 NG\n");
}

void test_add003(){
	lichck(3, 1, var003[4], "compound literal add No.3 NG\n");
	lichck(3, 0, var003[5], "compound literal add No.3 NG\n");
	lichck(3, 2, var003[6], "compound literal add No.3 NG\n");
}

void test_add004(){
	ichck(4, 5, *var004, "compound literal add No.4 NG\n");
}

void test_add005(){
	ichck(5, 0, var005[0], "compound literal add No.5 NG\n");
	ichck(5, 100, var005[5], "compound literal add No.5 NG\n");
}

void test_add006(){
	ichck(6, 100, var006[0], "compound literal add No.6 NG\n");
}

void test_add007(){
	ichck(7, e2, var007, "compound literal add No.7 NG\n");
}

void test_add008(){
	int x = 800;
	int var008 = (int)(x);
	ichck(1, 800, var008, "compound literal add No.1 NG\n");
}

void test_add009(){
	long *var009 = (long[10]){0,1,2,3,4,5,6,7,8,9};
	ichck(9, 1, var009[1], "compound literal add No.9 NG\n");
	ichck(9, 5, var009[5], "compound literal add No.9 NG\n");
}

void test_add010(){
	llichck(10, 1, var010[1], "compound literal add No.10 NG\n");
	llichck(10, 2, var010[6], "compound literal add No.10 NG\n");
}

void test_add011(){
	double *var011 = (double[]){[0 ... 4] = 1.1, [6 ... 9] = 2.2};
	dchck(11, 1.1, var011[1], 0.0, "compound literal add No.11 NG\n");
	dchck(11, 2.2, var011[6], 0.0, "compound literal add No.11 NG\n");
}

void test_add012(){
	ichck(12, 1, var012[0], "compound literal add No.12 NG\n");
	ichck(12, 2, var012[5], "compound literal add No.12 NG\n");
}

void test_add013(){
	ichck(13, 100, var013[0], "compound literal add No.13 NG\n");
	ichck(13, 0, var013[9], "compound literal add No.13 NG\n");
}

void test_add014(){
	double var014 = (double)(14.0);
	dchck(14, 14.0, var014, 0.0, "compound literal add No.14 NG\n");
}

void test_add018(){
	int *var018 = (int[10]){[5] = 100};
	ichck(18, 100, var018[5], "compound literal add No.18 NG\n");
}

void test_add024(){
	int *var024, a[2]={0,0};
        var024 = a;
	var024 = (int[2]){*var024};
	ichck(24, 0, var024[1], "compound literal add No.24 NG\n");
}

void test_add025(int *var025){
	ichck(25, 100, var025[5], "compound literal add No.25 NG\n");
}

void test_add026(){
	char *var026=(char []){"/tmp/testfile"};
	schck(26, "/tmp/testfile", var026, "compound literal add No.26 NG\n");
}

int main(){

	header("GNU comp","Gnu Compound Literal add test");

	test_add001();
	test_add002();
	test_add003();
	test_add004();
	test_add005();
	test_add006();
	test_add007();
	test_add008();
	test_add009();
	test_add010();
	test_add011();
	test_add012();
	test_add013();
	test_add014();
	test_add018();
	test_add024();
	test_add025((int[]){[5 ... 9] = 100});
	test_add026();

	header("GNU comp","Gnu Compound Literal add test");


}
