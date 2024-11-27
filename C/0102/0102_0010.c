#include <stdio.h>

#if defined(__STDC_HOSTED__)
#include <math.h>

void check_opt(double const rval, double * restrict prdef, long * restrict pldef, int num) {
  int i;
  double rarg, rtmp;
  rtmp = rval / (double)num  * 2.0;
  rarg = -rval;
  for(i=0;i<num;++i) {
    prdef[i] = round(rarg);
    pldef[i] = lround(rarg);
    rarg += rtmp;
  }
}

void check_special_value(double const rval, double * restrict prdef, long * restrict pldef) {
  *prdef = round(rval);
  *pldef = lround(rval);
}

void value_init(double *rval, long *ival) {
  *rval = 2.0;
  *ival = 2L;
}
int main() {
  double rarray[403];
  long larray[403];

  check_opt(1.0e+300, rarray, larray, 403);
  double rval = -1.0e+300, rtmp = 1.0e+300 / (double)403 * 2.0;
  for(int i = 0; i<403; ++i, rval += rtmp) {
    if (rarray[i] != rval) {
      printf("NG(round) : %d : %lf : %lf\n", i, rarray[i], rval);
    }
  }
#if defined(__sparc) || defined(__aarch64__)
  for(int i=0; i<201; ++i) {
    if (larray[i] != 0x8000000000000000LL) {
      printf("NG(lround) : %d : %lld\n", i, larray[i]);
    }
  }
  for(int i=202; i<403; ++i) {
    if (larray[i] != 0x7fffffffffffffffLL) {
      printf("NG(lround) : %d : %lld\n", i, larray[i]);
    }
  }
#else
  for(int i=0; i<403; ++i) {
    if (larray[i] != 0x8000000000000000LL) {
      printf("NG(lround) : %d : %lld\n", i, larray[i]);
    }
  }
#endif

  check_opt(404.0, rarray, larray, 403);
  rval = -404.0;
  long lval = -404L;
  for(int i=0;i<403;++i, rval += 2.0, lval += 2L) {
    if (rarray[i] != rval) {
      printf("NG(round) : %d : %lf : %lf\n", i, rarray[i], rval);
    }
    if (larray[i] != lval) {
      printf("NG(lround) : %d : %lld : %lld\n", i, larray[i], lval);
    }
    if (i==100 || i==302) {
      rval += 1.0;
      lval += 1L;
    }
  }

  check_opt(10.0, rarray, larray, 403);
  rval = -10.0;
  lval = -10L;
  int boundary_value[] = { 10, 30, 50, 70, 90, 110, 130, 151, 171, 191, 211, 231, 251, 272, 292, 312, 332, 352, 372, 392, 0 }, *pb = boundary_value;
  for(int i=0; i<403; ++i) {
    if (rarray[i] != rval) {
      printf("NG(round) : %d : %lf : %lf\n", i, rarray[i], rval);
    }
    if (larray[i] != lval) {
      printf("NG(lround) : %d : %lld : %lld\n", i, larray[i], lval);
    }
    if (i == *pb) {
      rval += 1.0;
      lval += 1L;
      ++pb;
    }
  }
  double fout;
  long lout;

  value_init(&fout, &lout);
  check_special_value(0x1fffffffffffffp-54, &fout, &lout);
  if ( fout != 0.0 ) {
    printf("NG(round) : limit1 : %lf\n", fout);
  }
  if ( lout != 0L ) {
    printf("NG(lround) : limit1 : %lld\n", lout);
  }

  value_init(&fout, &lout);
  check_special_value(0x1ffffffffffffep-54, &fout, &lout);
  if ( fout != 0.0 ) {
    printf("NG(round) : limit2 : %lf\n", fout);
  }
  if ( lout != 0L ) {
    printf("NG(lround) : limit2 : %lld\n", lout);
  }

  value_init(&fout, &lout);
  check_special_value(0x1p-1, &fout, &lout);
  if ( fout != 1.0 ) {
    printf("NG(round) : limit3 : %lf\n", fout);
  }
  if ( lout != 1L ) {
    printf("NG(lround) : limit3 : %lld\n", lout);
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
