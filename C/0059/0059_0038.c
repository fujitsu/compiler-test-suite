#include <stdio.h>
#include <stdarg.h>
char *function(char *c1, int i1, const char *fmt, int i2) __attribute__((format_arg(3)));
int main() {
	printf(function("10", 10, "%d", 20), "** OK **");
}
char *function(char *a, int i1, const char *fmt, int i2) {
	return "%s";
}
