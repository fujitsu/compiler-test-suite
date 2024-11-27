#include <stdio.h>
#include <math.h>

#define NI (1024)
#define NII (100)

#define _CLONE_    N == 10
#define _TEST_ATTRIBUTE_ alias("N")


double r[NI];
static int N;
extern int M __attribute__((_TEST_ATTRIBUTE_));
void sub_abc() {
  int i;

  printf("%d\n",N);
  for (i=0; i<N; ++i) {
    r[i] = r[i] * i + M;
  }
}

int main(void) {
  puts("OK");
}

