#include <stdio.h>
#include <stdarg.h>
char *function(char *c1, const char *fmt) __attribute__((format_arg(2)));
int main() {
	printf(function("10", "%d"), "** OK **");
}
char *function(char *a, const char *fmt) {
	return "%s";
}
