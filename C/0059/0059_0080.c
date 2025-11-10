#include <stdio.h>
#include "000.h"

int c = 0;
int m = 0;
int d = 0;
int x = 1;

void judge(int ac, int am, int ad) {
	ichck(1, ac, c, "constructor");
	ichck(2, am, m, "main");
	ichck(3, ad, d, "destructor");
}
__attribute__((constructor)) void a();
__attribute__((destructor))  void b();

void a() {
	header("001nconstructor", "constructor");
	c = x;
}
void b() {
	d = x*100;
	judge(1, 10, 100);
	header("001nconstructor", "constructor");
}

int main() {
	m = x*10;
	exit(0);
}


