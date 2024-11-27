#include <unistd.h>
#include <stdio.h>
#include <stdarg.h>

__attribute__((sentinel(0))) int execl(const char*,const char*,...);


int main(void) {
  execl("b.out", "b.out","333","444");
  return 0;
}
