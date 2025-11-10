#include <cstdio>
#include <stdarg.h>

void func(char const* format, ...){
  char tmp[10];

  va_list args;

  va_start(args, format);
  std::vsnprintf(tmp, sizeof(tmp)/sizeof(tmp[0]), format, args);
  va_end(args);

  printf("%s\n", tmp);
}

int main(void){
  func("%s", "ok");

  return 0;
}
