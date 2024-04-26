#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#if __GLIBC_PREREQ(2, 17)
#include <uchar.h>
#endif

int main(void)
{
#if __GLIBC_PREREQ(2, 17)
  char32_t in = U'a';
  mbstate_t st;
  char out[MB_CUR_MAX];
  int rc, i;

  memset(&st, 0x00, sizeof(st));

  rc = c32rtomb(out, in, &st);
  if (rc < 0) {
    perror("c32rtomb() fails to convert");
    exit(-1);
  }
#endif

  printf("ok\n");

  return 0;
}
