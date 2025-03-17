#include <iostream>
#include <stdarg.h>
#include <stdio.h>
char *function(const char *fmt, char *c1) __attribute__((format_arg(1)));
int main() { printf(function("%d", "10"), "** OK **"); }
char *function(const char *fmt, char *a) { return "%s"; }
