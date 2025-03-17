#include <stdio.h>
int main() {
  struct s {
    int mem;
    struct {
      char d;
      char a[16];
      struct {
        char d;
        char a[16];
      } xxa;
    } xa;
  } sa, sb, aa[3], ab[3], sx;

#pragma omp parallel
  sb.mem = 10;
#pragma omp parallel
  sb.xa.d = 'a';
#pragma omp parallel
  sb.xa.xxa.d = 'b';
#pragma omp parallel
  ab[2].xa.d = 'c';

#pragma omp parallel
  sa.mem = sb.mem;
#pragma omp parallel
  sa.xa = sb.xa;
#pragma omp parallel
  sa.xa.xxa = sb.xa.xxa;
#pragma omp parallel
  aa[2].xa = ab[2].xa;

#pragma omp parallel
  sx = sa;

  if (sa.xa.d == 'a' && sa.xa.xxa.d == 'b' && aa[2].xa.d == 'c' &&
      sb.xa.d == 'a' && sb.xa.xxa.d == 'b' && ab[2].xa.d == 'c' &&
      sx.xa.d == 'a' && sx.xa.xxa.d == 'b')
    printf("ok\n");
  else
    printf("ng\n");
}
