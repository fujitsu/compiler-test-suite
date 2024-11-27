

#include <stdio.h>

typedef double mask_t;
typedef int  test_t;

#define VLEN 8

mask_t a[VLEN];
test_t x[VLEN];

int dummy;

void test()
{
  int i;
  for(i=0;i<VLEN;i++) {
    if (a[i] > (mask_t)0) {
      x[i] = x[i] + 2;
    }
  }
  dummy++;
  for(i=0;i<VLEN;i++) {
    if (a[i] > (mask_t)0) {
      x[i] = x[i] - 1;
    } 
  }
}

int main()
{
  int i;
  for(i=0;i<VLEN;i++) {
    a[i] = i-(VLEN/2);   
  }
  test();
  for(i=0;i<VLEN;i++) {
    if( a[i] > (mask_t)0 ) {
      if (x[i] != 1) {
        fprintf(stderr, "NG then (%d) %d\n", i, (int)x[i]);
      }
    }
    else {
      if (x[i] != (mask_t)0) {
        fprintf(stderr, "NG else (%d) %d\n", i, (int)x[i]);
      }
    }
  }
  puts("PASS");
  return 0;
}
