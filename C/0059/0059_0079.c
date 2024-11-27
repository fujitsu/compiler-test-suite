#include <stdio.h>

void weak001n_1(int val) {
	if (val == 100) {
		printf("*OK*");
	}
	else {
		printf("*NG*");
	}
}

#pragma weak weak001n = weak001n_1

int main()
{
	weak001n(100);
}

