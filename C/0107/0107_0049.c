

#include <stdio.h>

typedef float test_t;

#define VLEN 8

test_t a[VLEN];
test_t b[VLEN];
test_t x[VLEN];
test_t y[VLEN];

void test()
{
  int i;
  for(i=0;i<VLEN;i++) {
    if( a[i] == b[i] ) {
        ;
    }
    else {
       x[i] = y[i] + 1;
    }
  }
}

int main()
{
  int i;
  for(i=0;i<VLEN;i++) {
    a[i] = i-(VLEN/2);   
    b[i] = (VLEN/2)-i;   
  }
  test();
  for(i=0;i<VLEN;i++) {
    if( !(a[i] == b[i]) ) {
      if (x[i] != (y[i] + 1)) {
        fprintf(stderr, "NG then (%d) %d %d\n", i, (int)x[i], (int)(y[i] + 1));
      }
    }
    else {
      if (x[i] != 0) {
        fprintf(stderr, "NG else (%d) %d %d\n", i, (int)x[i], (int)(y[i] + 1));
      }
    }
  }
  puts("PASS");
  return 0;
}
