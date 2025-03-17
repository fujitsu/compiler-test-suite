#include <stdio.h>

union X {
public:
  short s;
  char c[2];
  X() { s = 0; }
} x;
union Y {
public:
  short s;
  char c[2];
  Y() { s = 0; }
} y;
union Z {
public:
  short s;
  char c[2];
  Z() { s = 0; }
} z;

void f(int, char *);
void f(int, const char *);

void g(int, char *);

void h(int, const char *);

const char *data1 = "over";
const char *data2 = "987";
int main() {
  char data3[8] = "loading";
  char c1 = 'A';
  char c2 = '3';

#pragma omp parallel
  f(0, data1);
#pragma omp parallel
  h(0, data2);
#pragma omp parallel
  f(1, data3);
#pragma omp parallel
  g(1, &c1);
#pragma omp parallel
  h(1, &c2);
#if (defined(BYTE_ORDER) && (BYTE_ORDER == LITTLE_ENDIAN)) ||                  \
    defined(__aarch64__) || defined(__x86_64__)
  if (x.s == 0x6c6f && y.s == 0x4100 && z.s == 0x3339)
#else
  if (x.s == 0x6f6c && y.s == 0x0041 && z.s == 0x3933)
#endif
    printf("ok\n");
  else
    printf("ng\n");
}

void f(int i, char *p) { x.c[i] = *p; }

void f(int i, const char *pc) { x.c[i] = *pc; }

void g(int i, char *p) { y.c[i] = *p; }

void h(int i, const char *pc) { z.c[i] = *pc; }
