#include <stdio.h>
#include <string.h>
void test001() {
	{
		__label__ test001_1;
		goto test001_1;
		printf("*NG*\n");
		
	test001_1:
		printf("*OK*\n");
		return;
	}
}
#define TEST_004(index)                        \
({                                             \
	__label__ test004_1, test004_2, test004_3; \
	int val = 0;                               \
	if (index == 1) goto test004_1;            \
	if (index == 2) goto test004_2;            \
	printf("*NG*\n");    \
	test004_1:                                 \
		if (index == 1) printf("*OK*\n");  \
		goto test004_3;                        \
	test004_2:                                 \
		if (index == 2) printf("*OK*\n");  \
		goto test004_3;                        \
	test004_3: \
		val;                                 \
})

void test004() {
	TEST_004(2);
	TEST_004(2);
test004_1:;	
	return;
}
void test007(int val1, int val2) {
	char out[16];
	out[0] = 0x00;
	int i = 0;
	while (1) {
		while (1) {
			__label__ test007_1;
			__label__ test007_2;
			i++;
			if (i==val1) goto test007_1;
			if (i==val2) goto test007_2;
			continue;
		test007_1:
			strcat(out,"1");
			continue;
		test007_2:
			strcat(out,"2");
			break;
		}
		if (strcmp("12", out) == 0) {
			printf("*OK*\n");
		}
		else{
			printf("*NG*\n");
		}
		break;
	}
test007_1:
test007_2:
	return;
}
void test009(int val) {
	int i=0;
	switch(val) {
		__label__ test009_1, test009_2, test009_3;
		case 1:
			goto test009_1;
			break;
		case 2:
			goto test009_2;
			break;
		case 3:
			goto test009_3;
			break;
		default:
	test009_1:
			i++;
	test009_2:
			i++;
	test009_3:
			i++;
			break;
	}
	if (i==2) {
		printf("*OK*\n");
	}
	else {
		printf("*NG*\n");
	}
	return;
}
int main() {
	test001();
	test004();
	test007(4, 8);
	test009(2);
	return 0;
}
