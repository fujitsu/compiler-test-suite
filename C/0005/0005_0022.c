#include <stdio.h>

#if defined(__GLIBC_PREREQ)
#if __GLIBC_PREREQ(2, 17)
#include <uchar.h>
#include <wchar.h>
#endif
#endif

int main(void){
#if defined(__GLIBC_PREREQ)
#if __GLIBC_PREREQ(2, 17)
  const char16_t utf16[] = u"ABC" u"ok";
  const char32_t utf32[] = U"ABC" U"ok";
  const wchar_t  wchar[] = L"ABC" L"ok";
#endif
#endif

  printf("ok\n");

  return 0;
}
