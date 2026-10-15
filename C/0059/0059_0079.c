#include <stdio.h>

void weak001n_1(int val) {
	if (val == 100) {
		printf("*OK*");
	}
	else {
		printf("*NG*");
	}
}

#ifdef __GNUC__
#ifndef __clang__
void weak001n(int);
#endif
#endif

#pragma weak weak001n = weak001n_1

int main()
{
	weak001n(100);
}

