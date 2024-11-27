#include <stdio.h>
#include <stdarg.h>
char *function(const char *fmt, char *c1) __attribute__((format_arg(1)));
int main() {
	printf(function("%s", ""), "** OK **");
}
char *function(const char *fmt, char *a) {
	return "%s";
}
