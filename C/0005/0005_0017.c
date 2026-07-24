#include <stdio.h>
#if defined(__GLIBC_PREREQ)
#if __GLIBC_PREREQ(2, 17)
#include <uchar.h>
#endif
#endif

int main(void){
#if defined(__GLIBC_PREREQ)
#if __GLIBC_PREREQ(2, 17)
  char16_t  utf16;
  char32_t  utf32;
  mbstate_t mb;
  size_t    st;
#endif
#endif

  printf("ok\n");

  return 0;
}
