#include <stdio.h>
#include <stdarg.h>

void bar(int num, ...) {
}

void foo(int num, ...) {
  va_list list;
  int i;
  char* p;
  va_start(list,num);

  for(i = 0; i< num; i++) {
    p = va_arg(list, char*);
  }
  bar(10,1,2,3,4,5,6,7,8);
  return;
}

int main() {
  char* a = "test";
  char* b = "test";
  foo(1,a);
  puts(a);
  puts(b);
  return 0;
}
