#include <stdio.h>

#if __GLIBC_PREREQ(2, 17)
#include <uchar.h>
#include <wchar.h>
#endif

int main(void){
#if __GLIBC_PREREQ(2, 17)
  const char16_t utf16[] = u"ABC" u"ok";
  const char32_t utf32[] = U"ABC" U"ok";
  const wchar_t  wchar[] = L"ABC" L"ok";
#endif

  printf("ok\n");

  return 0;
}
