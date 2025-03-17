#include <iostream>
#include <stdarg.h>
#include <stdio.h>

char *function(const char *fmt) __attribute__((format_arg(1)));
int main() { printf(function("%d"), "** OK **"); }
char *function(const char *fmt) { return (char *)"%s"; }
