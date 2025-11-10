#include <stdio.h>
#include "000.h"

void func(int i) {
	int j;
	const void *label = &&label001;
	for(j=0; j<100; j++) {
		if (j==i) {
			goto *label;
		}
	}
	ichck(1,i,j, "This is not called.");
	return;
label001:
	ichck(1,i,j, "This is called.");
	return;
}
int main() {
	header("LAV04N", "labels as values");
	func(10);
	header("LAV04N", "labels as values");
	return 0;
}
