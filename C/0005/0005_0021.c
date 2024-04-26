#include <stdio.h>
#if __GLIBC_PREREQ(2, 17)
#include <uchar.h>
#include <wchar.h>
#endif

int main(void){
  const char utf[] = "ABC" "ok";
  const char utf8[] = "ABC" u8"ok";

#if __GLIBC_PREREQ(2, 17)
  const char16_t utf16[] = "ABC" u"ok";
  const char32_t utf32[] = "ABC" U"ok";
  const wchar_t  wchar[] = "ABC" L"ok";
#endif

  printf("ok\n");

  return 0;
}
