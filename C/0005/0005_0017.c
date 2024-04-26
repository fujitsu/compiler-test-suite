#include <stdio.h>
#if __GLIBC_PREREQ(2, 17)
#include <uchar.h>
#endif

int main(void){
#if __GLIBC_PREREQ(2, 17)
  char16_t  utf16;
  char32_t  utf32;
  mbstate_t mb;
  size_t    st;
#endif

  printf("ok\n");

  return 0;
}
