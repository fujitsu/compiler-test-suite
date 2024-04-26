#include <stdio.h>
#if __GLIBC_PREREQ(2, 17)
#include <uchar.h>
#include <wchar.h>
#endif

int main(void){
  const char utf[] = "ok";
  const char utf8[] = u8"ok";

#if __GLIBC_PREREQ(2, 17)
  const char16_t utf16[] = u"ok";
  const char32_t utf32[] = U"ok";
  const wchar_t  wchar[] = L"ok";
#endif

  printf("ok\n");

  return 0;
}

