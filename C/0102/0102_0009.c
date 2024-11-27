#include <stdio.h>

#if defined(__STDC_HOSTED__)
#include <math.h>

void check_opt(float const rval, float * restrict prdef, int num) {
  int i;
  float rarg, rtmp;
  rtmp = rval / (float)num  * 2.0f;
  rarg = -rval;
  for(i=0;i<num;++i) {
    prdef[i] = roundf(rarg);
    rarg += rtmp;
  }
}

void check_special_value(float const rval, float * restrict prdef) {
  *prdef = roundf(rval);
}

void value_init(float *rval) {
  *rval = 2.0f;
}
int main() {
  float rarray[403];

  check_opt(1.0e+25f, rarray, 403);
  float rval = -1.0e+25f, rtmp = 1.0e+25f / (float)403 * 2.0f;
  for(int i = 0; i<403; ++i, rval += rtmp) {
    if (rarray[i] != rval) {
      printf("NG(roundf) : %d : %f : %f\n", i, rarray[i], rval);
    }
  }

  check_opt(404.0f, rarray, 403);
  rval = -404.0f;
  for(int i=0;i<403;++i, rval += 2.0f) {
    if (rarray[i] != rval) {
      printf("NG(roundf) : %d : %f : %f\n", i, rarray[i], rval);
    }
    if (i==100 || i==302) {
      rval += 1.0f;
    }
  }

  check_opt(10.0f, rarray, 403);
  rval = -10.0f;
  int boundary_value[] = { 10, 30, 50, 70, 90, 110, 130, 151, 171, 191, 211, 231, 251, 272, 292, 312, 332, 352, 372, 392, 0 }, *pb = boundary_value;
  for(int i=0; i<403; ++i) {
    if (rarray[i] != rval) {
      printf("NG(roundf) : %d : %f : %f\n", i, rarray[i], rval);
    }
    if (i == *pb) {
      rval += 1.0f;
      ++pb;
    }
  }
  float fout;

  value_init(&fout);
  check_special_value(0xffffffp-25, &fout);
  if ( fout != 0.0f ) {
    printf("NG(roundf) : limit1 : %f\n", fout);
  }

  value_init(&fout);
  check_special_value(0xfffffep-25, &fout);
  if ( fout != 0.0f ) {
    printf("NG(roundf) : limit2 : %f\n", fout);
  }

  value_init(&fout);
  check_special_value(0x1p-1, &fout);
  if ( fout != 1.0f ) {
    printf("NG(roundf) : limit3 : %f\n", fout);
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
