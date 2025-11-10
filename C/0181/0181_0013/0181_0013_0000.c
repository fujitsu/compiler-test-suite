extern int func();
#if MULTI_SEC
extern int func2();
#endif
extern int printf(const char *, ...);

int iarray[2];

int main() {
  int i;
#if MULTI_SEC
  int j;
#endif

  iarray[0] = 10;
  iarray[1] = 500;

  i = func();
#if MULTI_SEC
  j = func2();
  if (i == iarray[0] && j == iarray[1]) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d, j=%d, iarray[0]=%d, iarray[1]=%d\n", i, j, iarray[0], iarray[1]);
  }
#else
  if (i == iarray[0]) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d\n", i);
  }
#endif
  return 0;
}
