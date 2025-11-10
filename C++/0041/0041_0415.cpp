#include <cstdio>
#include <cstdarg>

void func(char const* in, char const* format, ...){
  va_list args;

  va_start(args, format);
  std::vsscanf(in, format, args);
  va_end(args);
}

int main(void){
  char ret[10];

  func("ok", "%s", ret);
  
  printf("%s\n", ret);

  return 0;
}
