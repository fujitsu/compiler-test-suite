#include <iostream>
#include <stdarg.h>
#include <stdio.h>
char *function(int c1, const char *fmt, int c2) __attribute__((format_arg(2)));
int main() { printf(function(10, "%d", 10), "** OK **"); }
char *function(int a, const char *fmt, int b) { return (char *)"%s"; }
