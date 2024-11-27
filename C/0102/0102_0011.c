#include <stdio.h>

#if defined(__STDC_HOSTED__)
#include <math.h>

void check_opt(double const rval, double * restrict prdef, int num) {
  int i;
  double rarg, rtmp;
  rtmp = rval / (double)num  * 2.0;
  rarg = -rval;
  for(i=0;i<num;++i) {
    prdef[i] = round(rarg);
    rarg += rtmp;
  }
}

void check_special_value(double const rval, double * restrict prdef) {
  *prdef = round(rval);
}

void value_init(double *rval) {
  *rval = 2.0;
}
int main() {
  double rarray[403];

  check_opt(1.0e+300, rarray, 403);
  double rval = -1.0e+300, rtmp = 1.0e+300 / (double)403 * 2.0;
  for(int i = 0; i<403; ++i, rval += rtmp) {
    if (rarray[i] != rval) {
      printf("NG(round) : %d : %lf : %lf\n", i, rarray[i], rval);
    }
  }

  check_opt(404.0, rarray, 403);
  rval = -404.0;
  for(int i=0;i<403;++i, rval += 2.0) {
    if (rarray[i] != rval) {
      printf("NG(round) : %d : %lf : %lf\n", i, rarray[i], rval);
    }
    if (i==100 || i==302) {
      rval += 1.0;
    }
  }

  check_opt(10.0, rarray, 403);
  rval = -10.0;
  int boundary_value[] = { 10, 30, 50, 70, 90, 110, 130, 151, 171, 191, 211, 231, 251, 272, 292, 312, 332, 352, 372, 392, 0 }, *pb = boundary_value;
  for(int i=0; i<403; ++i) {
    if (rarray[i] != rval) {
      printf("NG(round) : %d : %lf : %lf\n", i, rarray[i], rval);
    }
    if (i == *pb) {
      rval += 1.0;
      ++pb;
    }
  }
  double fout;

  value_init(&fout);
  check_special_value(0x1fffffffffffffp-54, &fout);
  if ( fout != 0.0 ) {
    printf("NG(round) : limit1 : %lf\n", fout);
  }

  value_init(&fout);
  check_special_value(0x1ffffffffffffep-54, &fout);
  if ( fout != 0.0 ) {
    printf("NG(round) : limit2 : %lf\n", fout);
  }

  value_init(&fout);
  check_special_value(0x1p-1, &fout);
  if ( fout != 1.0 ) {
    printf("NG(round) : limit3 : %lf\n", fout);
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
