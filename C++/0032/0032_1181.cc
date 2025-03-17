#include <stdio.h>
int main()
{
	int array[10];

	try {
		throw &array;
	}
	catch (int *p[10]) {
		printf("catch A\n");
	}
	catch (int (*p)[10]) {
		printf("catch B\n");
	}
	catch (...) {
		printf("NG\n");
	}

	return 0;
}




