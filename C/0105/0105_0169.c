#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    N == 10
#define _TEST_ATTRIBUTE_ alias("N")


double r[NI];
static int N;
extern int M __attribute__((_TEST_ATTRIBUTE_));
void sub_abc() {
  int i;

  for (i=0; i<N; ++i) {
    M =  M - 1;
    r[i] = r[i] * i + M + N;
  }
}

int main(void) {
  puts("OK");
}

