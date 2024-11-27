#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    II == 10
#define _CLONE2_    N == 32

#define _TRUE_ 1
#define _FALSE_ 0


double r[NI];
void sub_inline(unsigned int  N) {
  int i;
  for( i=0;i<N;++i) {
    r[i] += i/N*1.1;
  }
  return;
}

void sub_abc(int II) {
  int i;

  for (i=0; i<II; ++i) {
    r[i] = r[i] * i + 1.0;
    sub_inline(i);
  }
}

int main(void) {
  int i;
  for (i=0; i<128; ++i) {
    sub_abc(i);
  }
  
  puts("OK");
}

