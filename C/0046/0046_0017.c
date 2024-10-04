
#include <stdio.h>

#define unroll(a,b) \
  { \
    int i; \
    for (i=0; i<20; ++i) { \
      a[i] = a[i] + b[i]; \
    } \
  }

#define initarray(a,value) \
  { \
    int i; \
    for (i=0; i<20; ++i) { \
      a[i] = value; \
    } \
  }

#define sum(a,r) \
  { \
    int i; \
    r = 0; \
    for (i=0; i<20; ++i) { \
      r = r + a[i]; \
    } \
  }

int main(void) 
{
  float r1[20], r2[20];
  int a1[20], a2[20];
  const float r4ans = 180.0f;
  const int i4ans = 180;
  float r4res;
  int i4res;
  int mm;

  mm = 1;

  
  initarray(r1,4.0f);
  initarray(r2,5.0f);
  unroll(r1,r2);
  sum(r1,r4res);
  if (r4res != r4ans) {
    mm = 0;
    printf("ng : %f != %f\n", r4res, r4ans);
  }

  
  initarray(a1,4);
  initarray(a2,5);
  unroll(a1,a2);
  sum(a1,i4res);
  if (i4res != i4ans) {
    mm = 0;
    printf("ng : %d != %d\n", i4res, i4ans);
  }

  if (mm != 0) {
    printf("ok\n");
  }
  return 0;
}
