#include <cstdio>
#include <cstdarg>

void func(char const* format, ...){
  va_list args;

  va_start(args, format);
  std::vscanf(format, args);
  va_end(args);
}

int main(void){
  char tmp[100];
  func("%s", tmp);
  
  printf("ok\n");

  return 0;
}
