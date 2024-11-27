#include <stdio.h>

#if defined(__STDC_HOSTED__)
#include <math.h>

void check_opt(float const rval, float * restrict prdef, long long * restrict pldef, int num) {
  int i;
  float rarg, rtmp;
  rtmp = rval / (float)num  * 2.0f;
  rarg = -rval;
  for(i=0;i<num;++i) {
    prdef[i] = roundf(rarg);
    pldef[i] = llroundf(rarg);
    rarg += rtmp;
  }
}

void check_special_value(float const rval, float * restrict prdef, long long * restrict pldef) {
  *prdef = roundf(rval);
  *pldef = llroundf(rval);
}

void value_init(float *rval, long long *ival) {
  *rval = 2.0f;
  *ival = 2LL;
}
int main() {
  float rarray[403];
  long long larray[403];

  check_opt(1.0e+25f, rarray, larray, 403);
  float rval = -1.0e+25f, rtmp = 1.0e+25f / (float)403 * 2.0f;
  for(int i = 0; i<403; ++i, rval += rtmp) {
    if (rarray[i] != rval) {
      printf("NG(roundf) : %d : %f : %f\n", i, rarray[i], rval);
    }
  }
#if defined(__sparc)
  for(int i=0; i<201; ++i) {
    if (larray[i] != 0x8000000000000000LL) {
      printf("NG(llroundf) : %d : %lld\n", i, larray[i]);
    }
  }
  for(int i=202; i<403; ++i) {
    if (larray[i] != 0x7fffffffffffffffLL) {
      printf("NG(llroundf) : %d : %lld\n", i, larray[i]);
    }
  }
#else
  for(int i=0; i<403; ++i) {
    if (larray[i] != 0x8000000000000000LL) {
      printf("NG(llroundf) : %d : %lld\n", i, larray[i]);
    }
  }
#endif

  check_opt(404.0f, rarray, larray, 403);
  rval = -404.0f;
  long long lval = -404L;
  for(int i=0;i<403;++i, rval += 2.0f, lval += 2L) {
    if (rarray[i] != rval) {
      printf("NG(roundf) : %d : %f : %f\n", i, rarray[i], rval);
    }
    if (larray[i] != lval) {
      printf("NG(llroundf) : %d : %lld : %lld\n", i, larray[i], lval);
    }
    if (i==100 || i==302) {
      rval += 1.0f;
      lval += 1L;
    }
  }

  check_opt(10.0f, rarray, larray, 403);
  rval = -10.0f;
  lval = -10L;
  int boundary_value[] = { 10, 30, 50, 70, 90, 110, 130, 151, 171, 191, 211, 231, 251, 272, 292, 312, 332, 352, 372, 392, 0 }, *pb = boundary_value;
  for(int i=0; i<403; ++i) {
    if (rarray[i] != rval) {
      printf("NG(roundf) : %d : %f : %f\n", i, rarray[i], rval);
    }
    if (larray[i] != lval) {
      printf("NG(llroundf) : %d : %lld : %lld\n", i, larray[i], lval);
    }
    if (i == *pb) {
      rval += 1.0f;
      lval += 1L;
      ++pb;
    }
  }
  float fout;
  long long lout;

  value_init(&fout, &lout);
  check_special_value(0xffffffp-25f, &fout, &lout);
  if ( fout != 0.0f ) {
    printf("NG(roundf) : limit1 : %f\n", fout);
  }
  if ( lout != 0L ) {
    printf("NG(llroundf) : limit1 : %lld\n", lout);
  }

  value_init(&fout, &lout);
  check_special_value(0xfffffep-25f, &fout, &lout);
  if ( fout != 0.0f ) {
    printf("NG(roundf) : limit2 : %f\n", fout);
  }
  if ( lout != 0L ) {
    printf("NG(llroundf) : limit2 : %lld\n", lout);
  }

  value_init(&fout, &lout);
  check_special_value(0x1p-1f, &fout, &lout);
  if ( fout != 1.0f ) {
    printf("NG(roundf) : limit3 : %f\n", fout);
  }
  if ( lout != 1L ) {
    printf("NG(llroundf) : limit3 : %lld\n", lout);
  }

  printf("OK\n");
  return 0;
}
#else
int main() {
  printf("OK\n");
  return 0;
}
#endif
