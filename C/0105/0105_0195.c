#include <stdio.h>
#include <math.h>

#define NI (64)
#define NII (32)

#define VALUE (5)

#define _CLONE_    II == 32

#define _TRUE_ 1
#define _FALSE_ 0

#define EQUAL_CHECK(a,b) (a==b)

int *get_addr(int *p) {
  return p;
}

void sub(int *a) {
  int i,N=NII;
  int *Np = get_addr(&N);

  for (i=0;i<N;++i) {
    *Np = VALUE;
    a[i] = i;
  }
}
void sub_abc(int *a) {
  int i,N=NII;
  int *Np = get_addr(&N);


  for (i=0;i<N;++i) {
    *Np = VALUE;
    a[i] = i;
  }
}

void sub_init(int *a) {
  int i;
  for (i=0;i<NII;++i) {
    a[i] = 0;
  }
}

int main(void) {
  int i;
  int a[NI],b[NI];
  int is_ok = _TRUE_;
  sub_init(a);
  sub_init(b);
  sub(a);
  sub_abc(b);

  for(i=0; i<NII; ++i) {
#if defined(_TEST_CLONE_)
    if ( i>=VALUE && a[i] == b[i]) {
      is_ok = _FALSE_ ;
      break;
    }
#else
    if (!EQUAL_CHECK(a[i], b[i])) {
      is_ok = _FALSE_ ;
      break;
    }
#endif
  }
  if ( is_ok == _TRUE_ ) {
    puts("OK");
  } else {
    puts("NG");
  }
}

