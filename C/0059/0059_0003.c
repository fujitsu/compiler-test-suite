

#include <stdio.h>
#include <stdlib.h>
#define TEST 100
int *func(int n) {
	int *a = malloc(sizeof(int)*5);
	return a;
}
void test001() {
	int i;
	int j = 0;
	printf("test001 start\n");
	for (i=0; i<3; i++) {
		auto const int t01 = TEST;
		printf("%d\n", t01);
		j += i;
	}
	printf("test001 end\n\n");
	return;
}
void test003() {
	int i;
	for(i=0; i<3; i++) {
		printf("test003 %02d start\n", i);
		static const int t03[100] = {1,2,3,4,5};
		printf("test003 %02d end\n\n", i);
	}
	return;
}
void test004() {
	if (0) {
		printf("test004(then) start\n");
		auto volatile int *t04 = func(3);
	}
	else {
		printf("test004(else) start\n");
	}
	printf("test004 end\n\n");
	return;
}
void test005() {
	int i;
	for(i=0; i<3; i++){
		if (0) {
			printf("test005(then) start\n");
		}
		else {
			printf("test005(else) %02d start\n", i);
			register volatile int t05[3] = {1,2,3};
		}
		printf("test005 end\n\n");
	}
	return;
}
void test006() {
	int a;
	int i;
	int j = 0;
	for (i=0; i<3; i++) {
		switch (j) {
			case 0:
				a = 1;
				register volatile int *val = func(3);
				printf("test006(case 0) start\n", i);
				break;
			case 1:
				printf("test006(case 1) start\n", i);
				break;
		}
		printf("test006 end\n\n");
	}
	return;
}
void test007() {
	int a;
	int i;
	int j = 1;
	for (i=0; i<3; i++) {
		switch (j) {
			case 0:
				a = 1;
				auto volatile int val[3] = {1,2,3};
				printf("test007(case 0) start\n", i);
			case 1:
				printf("test007(case 1) start\n", i);
		}
		printf("test007 end\n\n");
	}
	return;
}
int main() {
	test001();
	test003();
	test004();
	test005();
	test006();
	test007();
	return 0;
}

