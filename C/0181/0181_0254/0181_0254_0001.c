#include <stdio.h>
#include <stdarg.h>

void testVaCopyArg_2(char *fmt, ...) {
  va_list ap, aq;
  char *s;
  va_start(ap, fmt);
  va_copy(aq, ap);    

  s = va_arg(aq, char *);
  printf("string %s\n", s);
}

#ifdef ORIGINAL
int main() {
  testVaCopyArg("s", "abc");
  return 0;
}
#else
void sub2()
{
  testVaCopyArg_2("s", "abc");
}
#endif
