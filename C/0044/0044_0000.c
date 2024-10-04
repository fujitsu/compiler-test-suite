#include <stdio.h>

int ng_count = 0;

#if defined(__GNUC__)

void test_char(char *a, char b) {
  char *_TRGTYPE = "char";
  char r;
  char wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

}
/* -------------------------------------------------------------------------- */

void test_schar(signed char *a, signed char b) {
  char *_TRGTYPE = "signed char";
  signed char r;
  signed char wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_uchar(unsigned char *a, unsigned char b) {
  char *_TRGTYPE = "unsigned char";
  unsigned char r;
  unsigned char wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_short(short *a, short b) {
  char *_TRGTYPE = "short";
  short r;
  short wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_ushort(unsigned short *a, unsigned short b) {
  char *_TRGTYPE = "unsigned short";
  unsigned short r;
  unsigned short wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_int(int *a, int b) {
  char *_TRGTYPE = "int";
  int r;
  int wa = *a;
  char c1 = 9;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  wa = *a;
  r = __sync_lock_test_and_set(a, c1);
  if (!(r == wa && *a == c1) ) {
    printf("__sync_lock_test_and_set(%20s*, char) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }
  __sync_lock_release(a);

}

void test_uint(unsigned int *a, unsigned int b) {
  char *_TRGTYPE = "unsigned int";
  unsigned int r;
  unsigned int wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%d, *a=%d\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%d\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_long(long *a, long b) {
  char *_TRGTYPE = "long";
  long r;
  long wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%ld, *a=%ld\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_ulong(unsigned long *a, unsigned long b) {
  char *_TRGTYPE = "unsigned long";
  unsigned long r;
  unsigned long wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%ld, *a=%ld\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_longlong(long long *a, long long b) {
  char *_TRGTYPE = "long long";
  long long r;
  long long wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%ld, *a=%ld\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_ulonglong(unsigned long long *a, unsigned long long b) {
  char *_TRGTYPE= "unsigned long long";
  unsigned long long r;
  unsigned long long wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%ld, *a=%ld\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%ld\n", _TRGTYPE, *a);
    ng_count++;
  }

}

void test_ptr(int **a, int *b) {
  char *_TRGTYPE= "pointer";
  int *r;
  int *wa = *a;

  r = __sync_lock_test_and_set(a, b);
  if (!(r == wa && *a == b) ) {
    printf("__sync_lock_test_and_set(%20s) NG : r=%p, *a=%p\n", _TRGTYPE, r, *a);
    ng_count++;
  }

  __sync_lock_release(a);
  if (*a != 0) {
    printf("__sync_lock_release(%20s)      NG : *a=%p\n", _TRGTYPE, *a);
    ng_count++;
  }

  __sync_synchronize();
  *a = b;
  if (*a != b) {
    printf("__sync_synchronize NG : *a=%p\n", _TRGTYPE, *a);
    ng_count++;
  }

}
#endif

int main() {
#if defined(__GNUC__)
  char               ca, cb;
  signed char        sca, scb;
  unsigned char      uca, ucb;
  short              sa, sb;
  unsigned short     usa, usb;
  int                ia, ib;
  unsigned int       uia, uib;
  long               la, lb;
  unsigned long      ula, ulb;
  long long          lla, llb;
  unsigned long long ulla, ullb;
  int                *pa = &ia, *pb = &ib;

  ca = 1;
  cb = 2;
  test_char(&ca, cb);
  sca = 1;
  scb = 2;
  test_schar(&sca, scb);
  uca = 1;
  ucb = 2;
  test_uchar(&uca, ucb);
  sa = 1;
  sb = 2;
  test_short(&sa, sb);
  usa = 1;
  usb = 2;
  test_ushort(&usa, usb);
  ia = 1;
  ib = 2;
  test_int(&ia, ib);
  uia = 1;
  uib = 2;
  test_uint(&uia, uib);
  la = 1;
  lb = 2;
  test_long(&la, lb);
  ula = 1;
  ulb = 2;
  test_ulong(&ula, ulb);
  lla = 1;
  llb = 2;
  test_longlong(&lla, llb);
  ulla = 1;
  ullb = 1;
  test_ulonglong(&ulla, ullb);
  ia = 1;
  ib = 2;
  test_ptr(&pa, pb);
#endif 

  if (ng_count == 0) {
    printf("OK\n");
  }
  return 0;
}
