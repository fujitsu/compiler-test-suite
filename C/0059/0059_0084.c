#include <stdio.h>
#include "000.h"

void func(int i) {
	const void *label = &&label001;
	if (i==1) {
		goto *label;
	}
	ichck(1,0,1, "This is not called.");
	return;
label001:
	ichck(1,i,1, "This is called.");
	return;
}
int main() {
	header("LAV01N", "labels as values");
	func(1);
	header("LAV01N", "labels as values");
	return 0;
}
